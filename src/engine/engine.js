import { getMovedBoard } from '../engine_new/utils/getMovedBoard.js';
import { generateLegalMoves } from '../engine_new/moveGenerators/generateLegalMoves.js';
import { isCaptured } from '../engine_new/utils/isCaptured.js';
import { board2fen } from '../engine_new/transformers/board2fen.js';
import { evaluateBoard } from '../engine_new/evaluators/evaluateBoard.js';

export const moveString2move = (moveStr) =>
  ((8 - Number(moveStr[1])) << 13) +
  ((moveStr.charCodeAt(0) - 97) << 10) +
  ((8 - Number(moveStr[3])) << 3) +
  (moveStr.charCodeAt(2) - 97);

export const moveInBoard = (move, game) => {
  game.bitBoard = getMovedBoard(move, game.board);
  game.board = Array.from(game.bitBoard);
  game.wNext = !game.wNext;
  if (game.wNext) game.fullMoveNumber += 1;

  const now = Date.now();
  if (game.lastMovedAt) {
    const thinkingTime = now - game.lastMovedAt;
    game.thinkingTimes[game.wNext ? 'black' : 'white'].push(thinkingTime);
  }

  game.lastMovedAt = now;

  game.pollNum += 1;
  game.moveCount += 1;
  game.nextMoves = Array.from(generateLegalMoves(game.bitBoard));

  if (game.nextMoves.length === 0) {
    game.completed = true;

    if (isCaptured(game.bitBoard, game.bitBoard.indexOf(6 + (game.bitBoard[64] << 3)), game.bitBoard[64])) {
      game[game.wNext ? 'blackWon' : 'whiteWon'] = true;
    } else {
      game.isDraw = true;
    }
  }

  game.moves.push(move);
  game.allPastFens.push(board2fen(game.bitBoard));

  const pastFensOccurranceCount = game.allPastFens.reduce((p, c) => {
    p[c] = (p[c] || 0) + 1;
    return p;
  }, {});
  game.repeatedPastFens = Object.keys(pastFensOccurranceCount).filter((key) => pastFensOccurranceCount[key] > 1);

  game.origScore = evaluateBoard(game.bitBoard);
  game.dontLoop = game.bitBoard[64] ? game.origScore > -0.5 : game.origScore < -0.5;
  return game;
};

// ^^^^^^ for new engine

const PIECE_VALUES = [0, 1, 3, 3, 5, 9, 0, 0, 0, 64]; // empty, pawn, bishop, knight, rook, queen, null, null, null, king
const ATTACK_VALUES = [0, 0.5, 1.5, 1.5, 2.5, 4.5, 0, 0, 0, 32];

const getPreferCentreMultiplier = (x, y) => Math.pow(7 - Math.abs(3.5 - x) - Math.abs(3.5 - y), 4) / 200;
const PREFER_CENTER_TABLE = Array.from({ length: 8 }).map((row, x) =>
  Array.from({ length: 8 }).map((cell, y) => getPreferCentreMultiplier(x, y)),
);

export const getNormalizedMoveTree = ({ moveTree }) =>
  moveTree.map((m) => (Array.isArray(m) ? coordsToMoveString(...m) : m.toString().padStart(5))).join(' ');

export const rotateTable = (table) => {
  const result = [];
  for (let i = 0; i < 8; i += 1) {
    result[i] = [];
    for (let j = 0; j < 8; j += 1) {
      result[i][j] = table[j][7 - i];
    }
  }
  return result;
};

const getCastlingAvailability = ({ table }) => {
  let caStr = '';
  if (table[4][0][3]) {
    // white king not moved
    if (table[7][0][3]) caStr = `${caStr}K`;
    if (table[0][0][3]) caStr = `${caStr}Q`;
  }
  if (table[4][7][3]) {
    // black king not moved
    if (table[7][7][3]) caStr = `${caStr}k`;
    if (table[0][7][3]) caStr = `${caStr}q`;
  }
  return caStr || '-';
};

export const toFen = (game) => {
  let fen = '';
  for (const row of rotateTable(game.table)) {
    let emptyCellCount = 0;

    cellLoop: for (const cell of row) {
      if (emptyCellCount) {
        if (cell[0] === 0) {
          emptyCellCount += 1;
          continue cellLoop;
        }
        fen = `${fen}${emptyCellCount}`;
        emptyCellCount = 0;
      }

      if (cell[0] === 0) {
        emptyCellCount += 1;
        continue cellLoop;
      }

      let pieceChar = [0, 'p', 'b', 'n', 'r', 'q', 0, 0, 0, 'k'][cell[1]];
      if (cell[0] === 2) pieceChar = pieceChar.toUpperCase();
      fen = `${fen}${pieceChar}`;
    }

    if (emptyCellCount) fen = `${fen}${emptyCellCount}`;
    fen = `${fen}/`;
  }

  fen = fen.replace(/\/$/, '');

  fen = `${fen} ${game.wNext ? 'w' : 'b'} ${getCastlingAvailability(game)} ${game.enPassantTarget} ${
    game.halfMoveClock
  } ${game.fullMoveNumber}`;

  return fen;
};

export const moveStringToMoveCoords = (moveString) => [
  moveString.charCodeAt(0) - 97,
  moveString[1] - 1,
  moveString.charCodeAt(2) - 97,
  moveString[3] - 1,
];

// needed for service
var MoveToSend = function (moveCoord, index, dbTableWithMoveTask, splitMoveId, firstLevelMoveCount) {
  var moveTask = dbTableWithMoveTask.moveTask;

  this.shouldIDraw = moveTask.shouldIDraw;

  this.firstLevelMoveCount = firstLevelMoveCount;

  this.mod = moveTask.mod;

  this.currentBests = moveTask.currentBests;

  this.moveIndex = index;

  this.moveCoords = moveCoord; //one move only

  this.sharedData = moveTask.sharedData;

  this.sharedData.origTable = dbTableWithMoveTask.table;

  this.sharedData.gameNum = dbTableWithMoveTask._id;

  this.sharedData.desiredDepth = moveTask.sharedData.desiredDepth;

  this.sharedData.splitMoveID = splitMoveId;

  this.timer = {};

  this.history = [];
};

export const SplitMove = function (dbTableWithMoveTask) {
  //**console.log(JSON.stringify(dbTableWithMoveTask.moveTask))

  this.shouldIDraw = dbTableWithMoveTask.moveTask.shouldIDraw;

  this.started = new Date();

  this.splitMoveIndex = undefined;

  this.splitMoveID = Math.random() * Math.random();

  var movesToSend = [];

  const firstLevelMoveCount = dbTableWithMoveTask.moveTask.moveCoords.length;
  dbTableWithMoveTask.moveTask.moveCoords.forEach((moveCoord, index) => {
    movesToSend.push(new MoveToSend(moveCoord, index, dbTableWithMoveTask, this.splitMoveID, firstLevelMoveCount));
  });

  this.movesToSend = movesToSend; //this will get empty as we send the moves out for processing

  this.moves = movesToSend.slice(); //this should stay full

  this.thinkers = []; //this will get filled with the clients working on this splitmove

  this.gameNum = dbTableWithMoveTask._id;

  this.origTable = dbTableWithMoveTask.table;

  this.origMoveTask = dbTableWithMoveTask.moveTask;

  this.pendingMoveCount = dbTableWithMoveTask.moveTask.moveCoords.length;

  this.movesToSend.forEach(function (splitMove) {
    splitMove.progress = {
      moveCoords: splitMove.moveCoords,
      moveIndex: splitMove.moveIndex,

      done: false,
      result: {},

      expected: undefined,
    };
  });
};

export const MoveTaskN = function (dbTable, mod) {
  this.id = Math.random();

  const pastTablesOccurranceCount = dbTable.allPastTables.reduce((p, c) => {
    p[c] = (p[c] || 0) + 1;
    return p;
  }, {});
  this.repeatedPastTables = Object.keys(pastTablesOccurranceCount).filter((key) => pastTablesOccurranceCount[key] > 1);

  var shouldIDraw = evalFuncs.shouldIDraw(dbTable);
  this.shouldIDraw = shouldIDraw;

  const currentBests = [];
  this.currentBests = currentBests;

  if (mod) this.mod = mod;

  this.sharedData = {
    currentBests,
    shouldIDraw: shouldIDraw,
    repeatedPastTables: this.repeatedPastTables,
    origWNext: dbTable.wNext,

    desiredDepth: dbTable.desiredDepth,
    oppKingPos: whereIsTheKing(dbTable.table, !dbTable.wNext),
    origData: getTableData(dbTable.table, dbTable.wNext),
  };

  this.moveCoords = getAllMoves(dbTable.table, dbTable.wNext, false, 0, true).sort((moveA, moveB) => {
    return dbTable.table[moveB[2]][moveB[3]][1] - dbTable.table[moveA[2]][moveA[3]][1];
  });

  var dontLoop = false;
  if (this.sharedData.origData[0] > 1) {
    dontLoop = true;
  }

  this.sharedData.dontLoop = dontLoop;
};

export function addMovesToTable(originalTable, whiteNext, dontClearInvalid, returnMoveCoords) {
  let totalMoveCount = 0;
  var myCol = whiteNext ? 2 : 1;
  for (var i = 0; i < 8; i += 1) {
    for (var j = 0; j < 8; j += 1) {
      if (originalTable[i][j][0] === myCol) {
        originalTable[i][j][5] = canMove(
          i,
          j,
          whiteNext,
          originalTable,
          false,
          false,
          [0],
          dontClearInvalid,
          returnMoveCoords,
        ); //:  canMove(k, l, isWhite, moveTable, speedy, dontProt, hitSumm, dontRemoveInvalid) { //, speedy) {
        totalMoveCount += originalTable[i][j][5].length;
      } else {
        originalTable[i][j][5] = [];
      }
    }
  }
  return { table: originalTable, totalMoveCount };
}

function addMovesToTableFast(originalTable, whiteNext, dontClearInvalid, returnMoveCoords) {
  var myCol = whiteNext ? 2 : 1;
  for (var i = 0; i < 8; i += 1) {
    for (var j = 0; j < 8; j += 1) {
      if (originalTable[i][j][0] === myCol) {
        originalTable[i][j][5] = canMoveNoKingHit(
          i,
          j,
          whiteNext,
          originalTable,
          false,
          false,
          [0],
          dontClearInvalid,
          returnMoveCoords,
        ); //:  canMove(k, l, isWhite, moveTable, speedy, dontProt, hitSumm, dontRemoveInvalid) { //, speedy) {
        continue;
      }
      originalTable[i][j][5] = [];
    }
  }
}

export const evalFuncs = {
  getPieceValues: function (dbTable) {
    var result = {
      wVal: 0,
      bVal: 0,
    };

    var table = dbTable.table;

    table.forEach(function (x) {
      x.forEach(function (y) {
        switch (y[0]) {
          case 1:
            result.bVal += PIECE_VALUES[y[1]];

            break;

          case 2:
            result.wVal += PIECE_VALUES[y[1]];

            break;

          default:
            break;
        }
      });
    });

    return result;
  },

  shouldIDraw: function (dbTable) {
    var pieceVals = this.getPieceValues(dbTable);

    if (dbTable.wNext) {
      if (pieceVals.wVal < pieceVals.bVal) return true;
    } else {
      if (pieceVals.wVal > pieceVals.bVal) return true;
    }

    return false;
  },

  checkIfLooped: function (newTable, allPastTables) {
    var seenCount = 0;
    var thisState = tableToAptString(newTable);

    allPastTables.forEach(function (pastTable) {
      if (pastTable === thisState) seenCount += 1;
    });

    return seenCount;
  },
};

function whereIsTheKing(table, wn) {
  var myCol = 1;
  if (wn) myCol += 1; //myCol is 2 when white

  for (var i = 0; i < 8; i += 1) {
    for (var j = 0; j < 8; j += 1) {
      if (table[i][j][1] === 9 && table[i][j][0] === myCol) {
        //itt a kiraly
        return [i, j];
      }
    }
  }
}

function protectTable(table, myCol) {
  return protectPieces(table, myCol) - protectPieces(table, !myCol);
}

function protectPieces(originalTable, whitePlayer) {
  var myCol = 1;
  if (whitePlayer) myCol = 2; //myCol is 2 when white
  var protectedSum = 0;
  getAllMoves(originalTable, whitePlayer, true) //moves include to hit my own
    //true stands for letMeHitMyOwn

    .forEach(function (thisMoveCoords) {
      //we'll use the 2nd part of the moves [2][3]
      if (originalTable[thisMoveCoords[2]][thisMoveCoords[3]][0] === myCol) {
        //if i have sg there
        originalTable[thisMoveCoords[2]][thisMoveCoords[3]][6] = true; //that must be protected

        if (originalTable[thisMoveCoords[0]][thisMoveCoords[1]][1] === 9) {
          protectedSum += (9 - originalTable[thisMoveCoords[2]][thisMoveCoords[3]][1]) * 2; //king protects double
        } else {
          protectedSum += 9 - originalTable[thisMoveCoords[2]][thisMoveCoords[3]][1];
        }
      }
    });
  return protectedSum;
}

function getAllMoves(tableToMoveOn, whiteNext, hitItsOwn, allHitSum, removeCaptured) {
  //shouldn't always check hitsum
  var origColor = whiteNext ? 2 : 1;
  var thisArray = [];

  if (hitItsOwn) {
    whiteNext = !whiteNext;
  }
  var hitSumPart = [0];

  for (var lookI = 0; lookI < 8; lookI += 1) {
    //
    for (var lookJ = 0; lookJ < 8; lookJ += 1) {
      //look through the table
      if (tableToMoveOn[lookI][lookJ][0] === origColor) {
        //ha sajat babum
        canMove(lookI, lookJ, whiteNext, tableToMoveOn, !removeCaptured, true, hitSumPart) //true,true for speedy(sakkba is lep),dontProtect
          .forEach(function (stepItem) {
            thisArray[thisArray.length] = [lookI, lookJ, stepItem[0], stepItem[1]];
          });
      }
    }
  }
  return thisArray;
}
function getTableData(origTable, isWhite, oppKingPos) {
  //, rtnSimpleValue) {

  var lSancVal = 0;
  var rSancVal = 0;

  var tableValue = 0;

  var rtnMyHitSum = [0]; //this pointer will be passed to canmove
  var rtnHisHitSum = [0];

  var rtnMyBestHit = 0;
  var rtnHisBestHit = 0;

  var rtnHisMoveCount = 0;

  var rtnPushHimBack = 0;

  var rtnApproachTheKing = 0;

  if (oppKingPos === undefined) oppKingPos = whereIsTheKing(origTable, !isWhite);

  var origColor = 1;
  if (isWhite) origColor = 2;

  if (isWhite && origTable[4][0][3]) {
    //we play with white and have not moved the king yet

    var sancolhat = false;

    if (origTable[0][0][3]) {
      lSancVal += 3; //unmoved rook worth more than moved
      sancolhat = true;

      if (origTable[3][0][0] === 0) lSancVal += 1; //trying to empty between
      if (origTable[2][0][0] === 0) lSancVal += 3;
      if (origTable[1][0][0] === 0) lSancVal += 1;

      if (origTable[2][1][0] === 2) {
        //trying to keep my pieces  there to cover
        lSancVal += 1;
        if (origTable[2][1][1] === 1) lSancVal += 4;
      }
      if (origTable[1][1][0] === 2) {
        //trying to keep my pieces  there to cover
        lSancVal += 1;
        if (origTable[1][1][1] === 1) lSancVal += 4;
      }
      if (origTable[0][1][0] === 2) {
        //trying to keep my pieces  there to cover
        lSancVal += 1;
        if (origTable[0][1][1] === 1) lSancVal += 4;
      }
    }

    if (origTable[7][0][3]) {
      sancolhat = true;
      rSancVal += 3;

      if (origTable[6][0][0] === 0) rSancVal += 1;
      if (origTable[5][0][0] === 0) rSancVal += 3;

      if (origTable[7][1][0] === 2) {
        //trying to keep my pieces  there to cover
        rSancVal += 1;
        if (origTable[7][1][1] === 1) rSancVal += 4;
      }
      if (origTable[6][1][0] === 2) {
        //trying to keep my pieces  there to cover
        rSancVal += 1;
        if (origTable[6][1][1] === 1) rSancVal += 4;
      }
      if (origTable[5][1][0] === 2) {
        //trying to keep my pieces  there to cover
        rSancVal += 1;
        if (origTable[5][1][1] === 1) rSancVal += 4;
      }
    }

    if (sancolhat) {
      if (origTable[3][1][1] === 1 && origTable[3][1][0] === 2) lSancVal -= 6; //try to move d2 or e2 first
      if (origTable[4][1][1] === 1 && origTable[4][1][0] === 2) rSancVal -= 6;

      if (origTable[2][0][1] === 2 && origTable[2][0][0] === 2) lSancVal -= 6; //try to move out bishops
      if (origTable[5][0][1] === 2 && origTable[5][0][0] === 2) rSancVal -= 6;
    }
  }

  if (!isWhite && origTable[4][7][3]) {
    //we play with black and have not moved the king yet
    sancolhat = false;

    if (origTable[0][7][3]) {
      sancolhat = true;
      lSancVal += 3; //unmoved rook worth more than moved

      if (origTable[3][7][0] === 0) lSancVal += 1;
      if (origTable[2][7][0] === 0) lSancVal += 3;
      if (origTable[1][7][0] === 0) lSancVal += 1;

      if (origTable[2][6][0] === 1) {
        //trying to keep my pieces  there to cover
        lSancVal += 1;
        if (origTable[2][6][1] === 1) lSancVal += 4;
      }
      if (origTable[1][6][0] === 1) {
        //trying to keep my pieces  there to cover
        lSancVal += 1;
        if (origTable[1][6][1] === 1) lSancVal += 4;
      }
      if (origTable[0][6][0] === 1) {
        //trying to keep my pieces  there to cover
        lSancVal += 1;
        if (origTable[0][6][1] === 1) lSancVal += 4;
      }
    }

    if (origTable[7][7][3]) {
      sancolhat = true;
      rSancVal += 3;

      if (origTable[6][7][0] === 0) rSancVal += 1;
      if (origTable[5][7][0] === 0) rSancVal += 3;

      if (origTable[7][6][0] === 1) {
        //trying to keep my pieces  there to cover
        rSancVal += 1;
        if (origTable[7][6][1] === 1) rSancVal += 4;
      }
      if (origTable[6][6][0] === 1) {
        //trying to keep my pieces  there to cover
        rSancVal += 1;
        if (origTable[6][6][1] === 1) rSancVal += 4;
      }
      if (origTable[5][6][0] === 1) {
        //trying to keep my pieces  there to cover
        rSancVal += 1;
        if (origTable[5][6][1] === 1) rSancVal += 4;
      }
    }
    //
    if (sancolhat) {
      if (origTable[3][6][1] === 1 && origTable[3][6][0] === 1) lSancVal -= 4;
      if (origTable[4][6][1] === 1 && origTable[4][6][0] === 1) rSancVal -= 4;

      if (origTable[2][7][1] === 2 && origTable[2][7][0] === 1) lSancVal -= 4;
      if (origTable[5][7][1] === 2 && origTable[5][7][0] === 1) rSancVal -= 4;
    }
  }
  var myMostMoved = 0;

  var getToMiddle = 0;
  for (var lookI = 0; lookI < 8; lookI += 1) {
    //
    for (var lookJ = 0; lookJ < 8; lookJ += 1) {
      //look through the table

      if (origTable[lookI][lookJ][0] === origColor) {
        //ha sajat babum

        //below:	minnel nagyobb erteku babum minnel kozelebb az ellenfel kiralyahoz

        rtnApproachTheKing +=
          (7 - Math.abs(oppKingPos[0] - lookI) + (7 - Math.abs(oppKingPos[1] - lookJ))) * origTable[lookI][lookJ][1];

        canMove(lookI, lookJ, isWhite, origTable, true, true, rtnMyHitSum); //this can give back the moves, should use it
        if (origTable[lookI][lookJ][2] > myMostMoved) myMostMoved = origTable[lookI][lookJ][2]; //get the highest number any piece moved

        if (isWhite) {
          rtnPushHimBack += lookJ;
        } else {
          rtnPushHimBack += 7 - lookJ;
        }

        tableValue += PIECE_VALUES[origTable[lookI][lookJ][1]];
      } else {
        if (!(origTable[lookI][lookJ][0] === 0)) {
          //ha ellenfele

          rtnHisMoveCount += canMove(lookI, lookJ, !isWhite, origTable, true, true, rtnHisHitSum).length - 2;
          if (!isWhite) {
            rtnPushHimBack -= lookJ / 10;
          } else {
            rtnPushHimBack -= (7 - lookJ) / 10;
          }
          //or this tblevalue:
          tableValue -= PIECE_VALUES[origTable[lookI][lookJ][1]];
        }
      }
    }
  }

  return [
    tableValue,
    rtnMyHitSum[0],
    rtnHisHitSum[0], // rtnHisMoveCount,
    lSancVal,
    rSancVal,
    getToMiddle,
    rtnPushHimBack,
    myMostMoved,
    rtnApproachTheKing,
  ];
}

// needed for client
function canMove(k, l, isWhite, moveTable, speedy, dontProt, hitSumm = [0], dontRemoveInvalid, returnMoveCoords) {
  //, speedy) {
  var what = moveTable[k][l][1];
  var possibleMoves = [];
  var scndHitSum = [0];
  switch (what) {
    case 1:
      possibleMoves = pawnCanMove(k, l, isWhite, moveTable, hitSumm);
      break;
    case 2:
      possibleMoves = bishopCanMove(k, l, isWhite, moveTable, hitSumm);
      break;
    case 3:
      possibleMoves = horseCanMove(k, l, isWhite, moveTable, hitSumm);
      break;
    case 4:
      possibleMoves = rookCanMove(k, l, isWhite, moveTable, hitSumm);
      break;
    case 5:
      possibleMoves = queenCanMove(k, l, isWhite, moveTable, hitSumm);
      break;
    case 9:
      possibleMoves = kingCanMove(k, l, isWhite, moveTable, hitSumm);
      break;
    default:
  }
  if (typeof returnMoveCoords !== 'undefined') {
    //and not undefined..
    possibleMoves.forEach(function (move) {
      returnMoveCoords[returnMoveCoords.length] = [k, l, move[0], move[1]];
    });
  }
  if (!speedy) {
    //     lefut.
    for (var i = possibleMoves.length - 1; i >= 0; i -= 1) {
      //sakkba nem lephetunk
      if (captured(moveIt([k, l, possibleMoves[i][0], possibleMoves[i][1]], moveTable, dontProt), isWhite)) {
        //sakkba lepnenk
        possibleMoves.splice(i, 1);
      }
    }
    if (what === 9 && moveTable[k][l][3]) {
      //lesznek sanc lepesek is a possibleMoves tombben: kiraly nem mozdult meg

      if (captured(moveTable, isWhite)) {
        // de sakkban allunk
        for (var spliceCount = possibleMoves.length - 1; spliceCount >= 0; spliceCount -= 1) {
          if (
            possibleMoves[spliceCount][1] === l &&
            (possibleMoves[spliceCount][0] === k - 2 || possibleMoves[spliceCount][0] === k + 2)
          ) {
            possibleMoves.splice(spliceCount, 1); //remove
          }
        }
      }
      // remove the sakkot atugrani sem er sanc

      var removeKmin2 = true; //alapbol leszedne
      var removeKplus2 = true;
      for (var i = possibleMoves.length - 1; i >= 0; i -= 1) {
        //
        if (possibleMoves[i][1] === l && possibleMoves[i][0] === k - 1) removeKmin2 = false; //de ha van koztes lepes, ne szedd le
        if (possibleMoves[i][1] === l && possibleMoves[i][0] === k + 1) removeKplus2 = false;
      }
      for (var i = possibleMoves.length - 1; i >= 0; i -= 1) {
        //itt szedi le a sanclepeseket
        if (
          possibleMoves[i][1] === l &&
          ((possibleMoves[i][0] === k - 2 && removeKmin2) || (possibleMoves[i][0] === k + 2 && removeKplus2))
        ) {
          possibleMoves.splice(i, 1);
        }
      }
    }
  }
  return possibleMoves;
}

function canMoveNoKingHit(
  k,
  l,
  isWhite,
  moveTable,
  speedy,
  dontProt,
  hitSumm = [0],
  dontRemoveInvalid,
  returnMoveCoords,
) {
  //, speedy) {
  var what = moveTable[k][l][1];
  var possibleMoves = [];
  switch (what) {
    case 1:
      possibleMoves = pawnCanMoveNkh(k, l, isWhite, moveTable, hitSumm);
      break;
    case 2:
      possibleMoves = bishopCanMoveNkh(k, l, isWhite, moveTable, hitSumm);
      break;
    case 3:
      possibleMoves = horseCanMoveNkh(k, l, isWhite, moveTable, hitSumm);
      break;
    case 4:
      possibleMoves = rookCanMoveNkh(k, l, isWhite, moveTable, hitSumm);
      break;
    case 5:
      possibleMoves = queenCanMoveNkh(k, l, isWhite, moveTable, hitSumm);
      break;
    case 9:
      possibleMoves = kingCanMoveNkh(k, l, isWhite, moveTable, hitSumm);
      break;
    default:
  }
  if (typeof returnMoveCoords !== 'undefined') {
    //and not undefined..
    possibleMoves.forEach(function (move) {
      returnMoveCoords[returnMoveCoords.length] = [k, l, move[0], move[1]];
    });
  }
  if (!speedy) {
    //     lefut.
    for (var i = possibleMoves.length - 1; i >= 0; i -= 1) {
      //sakkba nem lephetunk
      if (captured(moveIt([k, l, possibleMoves[i][0], possibleMoves[i][1]], moveTable, dontProt), isWhite)) {
        //sakkba lepnenk
        possibleMoves.splice(i, 1);
      }
    }
    if (what === 9 && moveTable[k][l][3]) {
      //lesznek sanc lepesek is a possibleMoves tombben: kiraly nem mozdult meg

      if (captured(moveTable, isWhite)) {
        // de sakkban allunk
        for (var spliceCount = possibleMoves.length - 1; spliceCount >= 0; spliceCount -= 1) {
          if (
            possibleMoves[spliceCount][1] === l &&
            (possibleMoves[spliceCount][0] === k - 2 || possibleMoves[spliceCount][0] === k + 2)
          ) {
            possibleMoves.splice(spliceCount, 1); //remove
          }
        }
      }
      // remove the sakkot atugrani sem er sanc

      var removeKmin2 = true; //alapbol leszedne
      var removeKplus2 = true;
      for (var i = possibleMoves.length - 1; i >= 0; i -= 1) {
        //
        if (possibleMoves[i][1] === l && possibleMoves[i][0] === k - 1) removeKmin2 = false; //de ha van koztes lepes, ne szedd le
        if (possibleMoves[i][1] === l && possibleMoves[i][0] === k + 1) removeKplus2 = false;
      }
      for (var i = possibleMoves.length - 1; i >= 0; i -= 1) {
        //itt szedi le a sanclepeseket
        if (
          possibleMoves[i][1] === l &&
          ((possibleMoves[i][0] === k - 2 && removeKmin2) || (possibleMoves[i][0] === k + 2 && removeKplus2))
        ) {
          possibleMoves.splice(i, 1);
        }
      }
    }
  }
  return possibleMoves;
}

function pushAidA(hitSummmm, canMoveTo, x, y, fromTable, isWhite, whatHits) {
  const pieceThere = whatsThereNN(x, y, fromTable);
  if (pieceThere[0] === 3) return false; // off the table, dont go further

  const myCol = isWhite ? 2 : 1;
  const target = fromTable[x][y];
  if (target[0] === myCol) return false; // my piece, can't go there, dont go further

  // opponents piece or empty sqare there, can move there
  canMoveTo[canMoveTo.length] = [x, y, target[1]];
  if (target[0] === 0) return true; // can go further if it was empty space, no hit

  // we found a hit
  var thisHit = PIECE_VALUES[target[1]]; //normal hivalue
  if (target[6]) thisHit -= whatHits; // protected

  if (hitSummmm[0] < thisHit) hitSummmm[0] = thisHit;
  return false; // can't go further
}

function pushAidANoKingHit(hitSummmm, canMoveTo, x, y, fromTable, isWhite, whatHits) {
  const pieceThere = whatsThereNN(x, y, fromTable);
  if (pieceThere[0] === 3) return false; // off the table, dont go further

  const myCol = isWhite ? 2 : 1;
  const target = fromTable[x][y];
  if (target[0] === myCol) return false; // my piece, can't go there, dont go further

  if (target[1] === 9) throw 'illegal';

  // opponents piece or empty sqare there, can move there
  canMoveTo[canMoveTo.length] = [x, y, target[1]];
  if (target[0] === 0) return true; // can go further if it was empty space, no hit

  // we found a hit
  var thisHit = PIECE_VALUES[target[1]]; //normal hivalue
  if (target[6]) thisHit -= whatHits; // protected

  if (hitSummmm[0] < thisHit) hitSummmm[0] = thisHit;
  return false; // can't go further
}

function pushAidP(hitSummmm, canMoveTo, x, y, fromTable, isWhite, whatHits) {
  if (fromTable[x][y][0] === 0) canMoveTo[canMoveTo.length] = [x, y, 0];
}

function pushAidPHNoKingHit(hitSummmm, canMoveTo, x, y, fromTable, isWhite, whatHits) {
  const nc = isWhite ? 1 : 2;
  if (x > 0 && fromTable[x - 1][y][0] === nc) {
    if (fromTable[x - 1][y][1] === 9) {
      /* console.log(new Error().stack); */ throw 'illegal';
    }
    canMoveTo[canMoveTo.length] = [x - 1, y, fromTable[x - 1][y][1]];
  }
  if (x < 7 && fromTable[x + 1][y][0] === nc) {
    if (fromTable[x + 1][y][1] === 9) {
      /* console.log(new Error().stack); */ throw 'illegal';
    }
    canMoveTo[canMoveTo.length] = [x + 1, y, fromTable[x + 1][y][1]];
  }

  if (fromTable[x][y][0] === 0) {
    canMoveTo[canMoveTo.length] = [x, y, 0];
    return true;
  }
}

function pushAidPH(hitSummmm, canMoveTo, x, y, fromTable, isWhite, whatHits) {
  const nc = isWhite ? 1 : 2;
  if (x > 0 && fromTable[x - 1][y][0] === nc) canMoveTo[canMoveTo.length] = [x - 1, y, fromTable[x - 1][y][1]];
  if (x < 7 && fromTable[x + 1][y][0] === nc) canMoveTo[canMoveTo.length] = [x + 1, y, fromTable[x + 1][y][1]];
  if (fromTable[x][y][0] === 0) {
    canMoveTo[canMoveTo.length] = [x, y, 0];
    return true;
  }
}

function rookCanMove(k, l, isWhite, moveTable, hitSummm = [0]) {
  var canMoveTo = [];
  var i = k + 1;
  while (pushAidA(hitSummm, canMoveTo, i, l, moveTable, isWhite, 4)) i += 1;
  i = k - 1;
  while (pushAidA(hitSummm, canMoveTo, i, l, moveTable, isWhite, 4)) i -= 1;
  i = l + 1;
  while (pushAidA(hitSummm, canMoveTo, k, i, moveTable, isWhite, 4)) i += 1;
  i = l - 1;
  while (pushAidA(hitSummm, canMoveTo, k, i, moveTable, isWhite, 4)) i -= 1;
  return canMoveTo;
}

function rookCanMoveNkh(k, l, isWhite, moveTable, hitSummm = [0]) {
  var canMoveTo = [];
  var i = k + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, l, moveTable, isWhite, 4)) i += 1;
  i = k - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, l, moveTable, isWhite, 4)) i -= 1;
  i = l + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, k, i, moveTable, isWhite, 4)) i += 1;
  i = l - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, k, i, moveTable, isWhite, 4)) i -= 1;
  return canMoveTo;
}

function bishopCanMove(k, l, isWhite, moveTable, hitSummm = [0]) {
  var canMoveTo = [];
  var i = k + 1;
  var j = l + 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i += 1;
    j += 1;
  }
  i = k - 1;
  j = l - 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i -= 1;
    j -= 1;
  }
  i = k + 1;
  j = l - 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i += 1;
    j -= 1;
  }
  i = k - 1;
  j = l + 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i -= 1;
    j += 1;
  }
  return canMoveTo;
}

function bishopCanMoveNkh(k, l, isWhite, moveTable, hitSummm = [0]) {
  var canMoveTo = [];
  var i = k + 1;
  var j = l + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i += 1;
    j += 1;
  }
  i = k - 1;
  j = l - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i -= 1;
    j -= 1;
  }
  i = k + 1;
  j = l - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i += 1;
    j -= 1;
  }
  i = k - 1;
  j = l + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 2)) {
    i -= 1;
    j += 1;
  }
  return canMoveTo;
}

function queenCanMove(k, l, isWhite, moveTable, hitSummm = [0]) {
  var canMoveTo = [];
  var i = k + 1;
  var j = l + 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i += 1;
    j += 1;
  }
  i = k - 1;
  j = l - 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i -= 1;
    j -= 1;
  }
  i = k + 1;
  j = l - 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i += 1;
    j -= 1;
  }
  i = k - 1;
  j = l + 1;
  while (pushAidA(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i -= 1;
    j += 1;
  }
  i = k + 1;
  while (pushAidA(hitSummm, canMoveTo, i, l, moveTable, isWhite, 5)) i += 1;
  i = k - 1;
  while (pushAidA(hitSummm, canMoveTo, i, l, moveTable, isWhite, 5)) i -= 1;
  i = l + 1;
  while (pushAidA(hitSummm, canMoveTo, k, i, moveTable, isWhite, 5)) i += 1;
  i = l - 1;
  while (pushAidA(hitSummm, canMoveTo, k, i, moveTable, isWhite, 5)) i -= 1;
  return canMoveTo;
}

function queenCanMoveNkh(k, l, isWhite, moveTable, hitSummm = [0]) {
  var canMoveTo = [];
  var i = k + 1;
  var j = l + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i += 1;
    j += 1;
  }
  i = k - 1;
  j = l - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i -= 1;
    j -= 1;
  }
  i = k + 1;
  j = l - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i += 1;
    j -= 1;
  }
  i = k - 1;
  j = l + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, j, moveTable, isWhite, 5)) {
    i -= 1;
    j += 1;
  }
  i = k + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, l, moveTable, isWhite, 5)) i += 1;
  i = k - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, i, l, moveTable, isWhite, 5)) i -= 1;
  i = l + 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, k, i, moveTable, isWhite, 5)) i += 1;
  i = l - 1;
  while (pushAidANoKingHit(hitSummm, canMoveTo, k, i, moveTable, isWhite, 5)) i -= 1;
  return canMoveTo;
}

function pawnCanMove(k, l, isWhite, moveTable, hitSummm) {
  var canMoveTo = [];
  if (isWhite) {
    if (pushAidPH(hitSummm, canMoveTo, k, l + 1, moveTable, true, 1) && l === 1) {
      pushAidP(hitSummm, canMoveTo, k, l + 2, moveTable, true, 1);
    }
    //en pass
    if (k > 0 && moveTable[k - 1][l][3]) {
      pushAidA(hitSummm, canMoveTo, k - 1, l + 1, moveTable, true, 1);
    }
    if (k < 7 && moveTable[k + 1][l][3]) {
      pushAidA(hitSummm, canMoveTo, k + 1, l + 1, moveTable, true, 1);
    }
    return canMoveTo;
  }
  if (pushAidPH(hitSummm, canMoveTo, k, l - 1, moveTable, false, 1) && l === 6) {
    pushAidP(hitSummm, canMoveTo, k, l - 2, moveTable, false, 1);
  }
  //en pass
  if (k > 0 && moveTable[k - 1][l][3]) {
    pushAidA(hitSummm, canMoveTo, k - 1, l - 1, moveTable, false, 1);
  }
  if (k < 7 && moveTable[k + 1][l][3]) {
    pushAidA(hitSummm, canMoveTo, k + 1, l - 1, moveTable, false, 1);
  }
  return canMoveTo;
}

function pawnCanMoveNkh(k, l, isWhite, moveTable, hitSummm) {
  var canMoveTo = [];
  if (isWhite) {
    if (pushAidPHNoKingHit(hitSummm, canMoveTo, k, l + 1, moveTable, true, 1) && l === 1) {
      pushAidP(hitSummm, canMoveTo, k, l + 2, moveTable, true, 1);
    }
    //en pass
    if (k > 0 && moveTable[k - 1][l][3]) {
      pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l + 1, moveTable, true, 1);
    }
    if (k < 7 && moveTable[k + 1][l][3]) {
      pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l + 1, moveTable, true, 1);
    }
    return canMoveTo;
  }
  if (pushAidPHNoKingHit(hitSummm, canMoveTo, k, l - 1, moveTable, false, 1) && l === 6) {
    pushAidP(hitSummm, canMoveTo, k, l - 2, moveTable, false, 1);
  }
  //en pass
  if (k > 0 && moveTable[k - 1][l][3]) {
    pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l - 1, moveTable, false, 1);
  }
  if (k < 7 && moveTable[k + 1][l][3]) {
    pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l - 1, moveTable, false, 1);
  }
  return canMoveTo;
}

function kingCanMove(k, l, isWhite, moveTable, hitSummm) {
  var canMoveTo = [];
  pushAidA(hitSummm, canMoveTo, k + 1, l + 1, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k - 1, l + 1, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k + 1, l - 1, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k - 1, l - 1, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k + 1, l, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k - 1, l, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k, l + 1, moveTable, isWhite, 9);
  pushAidA(hitSummm, canMoveTo, k, l - 1, moveTable, isWhite, 9);
  //sanc
  if (moveTable[k][l][3]) {
    //if the king hasnt moved yet,
    // !!!TODO!!!: ha nincs sakkban, nem is ugrik at sakkot

    if (
      moveTable[0][l][3] && // unmoved rook on [0][l]
      moveTable[1][l][0] === 0 &&
      moveTable[2][l][0] === 0 &&
      moveTable[3][l][0] === 0
    ) {
      //empty between
      pushAidA(hitSummm, canMoveTo, 2, l, moveTable, isWhite, 9); //mark that cell if empty
    }
    if (moveTable[7][l][3] && moveTable[5][l][0] === 0 && moveTable[6][l][0] === 0) {
      //empty between
      pushAidA(hitSummm, canMoveTo, 6, l, moveTable, isWhite, 9); //mark that cell if empty
    }
  }
  return canMoveTo;
}

function kingCanMoveNkh(k, l, isWhite, moveTable, hitSummm) {
  var canMoveTo = [];
  pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l + 1, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l + 1, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l - 1, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l - 1, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k, l + 1, moveTable, isWhite, 9);
  pushAidANoKingHit(hitSummm, canMoveTo, k, l - 1, moveTable, isWhite, 9);
  //sanc
  if (moveTable[k][l][3]) {
    //if the king hasnt moved yet,
    // !!!TODO!!!: ha nincs sakkban, nem is ugrik at sakkot

    if (
      moveTable[0][l][3] && // unmoved rook on [0][l]
      moveTable[1][l][0] === 0 &&
      moveTable[2][l][0] === 0 &&
      moveTable[3][l][0] === 0
    ) {
      //empty between
      pushAidANoKingHit(hitSummm, canMoveTo, 2, l, moveTable, isWhite, 9); //mark that cell if empty
    }
    if (moveTable[7][l][3] && moveTable[5][l][0] === 0 && moveTable[6][l][0] === 0) {
      //empty between
      pushAidANoKingHit(hitSummm, canMoveTo, 6, l, moveTable, isWhite, 9); //mark that cell if empty
    }
  }
  return canMoveTo;
}

function horseCanMove(k, l, isWhite, moveTable, hitSummm) {
  var canMoveTo = [];
  pushAidA(hitSummm, canMoveTo, k + 1, l + 2, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k + 1, l - 2, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k - 1, l + 2, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k - 1, l - 2, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k + 2, l + 1, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k + 2, l - 1, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k - 2, l + 1, moveTable, isWhite, 3);
  pushAidA(hitSummm, canMoveTo, k - 2, l - 1, moveTable, isWhite, 3);
  return canMoveTo;
}

function horseCanMoveNkh(k, l, isWhite, moveTable, hitSummm) {
  var canMoveTo = [];
  pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l + 2, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k + 1, l - 2, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l + 2, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 1, l - 2, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k + 2, l + 1, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k + 2, l - 1, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 2, l + 1, moveTable, isWhite, 3);
  pushAidANoKingHit(hitSummm, canMoveTo, k - 2, l - 1, moveTable, isWhite, 3);
  return canMoveTo;
}

export function tableToAptString(table) {
  // make this string and concat!!!!!!!!!!!!!!!!!!!!
  var stateToRemember = [];
  for (var i = 0; i < 8; i += 1) {
    for (var j = 0; j < 8; j += 1) {
      var x = 10 * ~~table[i][j][0] + ~~table[i][j][1] + 55; //  B vagy nagyobb
      if (x < 65) x = 65; // ez egy nagy A

      stateToRemember[8 * i + j] = String.fromCharCode(x);
    }
  }
  return stateToRemember.join('');
}

export const aptStringToTable = (aptString) => {
  const table = [[], [], [], [], [], [], [], []];

  for (let i = 0; i < 64; i += 1) {
    const numberToUse = aptString.charCodeAt(i) - 55;
    const remainer = numberToUse % 10;
    table[Math.floor(i / 8)][i % 8] = [remainer ? Math.floor(numberToUse / 10) : 0, remainer];
  }

  return table;
};

function getPushString(table, moveCoords) {
  const whatM = table[moveCoords[0]][moveCoords[1]];
  // var cWhatMoves = String(whatM[0]); //color of whats moving
  var pWhatMoves = String(whatM[1]); //piece

  var whatsHit =
    table[moveCoords[2]][moveCoords[3]][0].toString() + //color of whats hit
    table[moveCoords[2]][moveCoords[3]][1]; //piece

  if (
    whatM[1] === 1 && //paraszt
    moveCoords[0] !== moveCoords[2] && //keresztbe
    whatsHit === '00' //uresre
  ) {
    //akkor tuti enpass
    if (whatM[0] === 1) {
      //fekete
      whatsHit = '21'; //akkor feher parasztot ut
    } else {
      whatsHit = '11';
    }
  }
  // return whatM[0].toString() + whatM[1] + coordsToMoveString(...moveCoords) + whatsHit;
  return whatM[0].toString() + whatM[1] + moveCoords.join('') + whatsHit;
}

export function moveInTable(moveCoords, dbTable, isLearner) {
  var toPush = getPushString(dbTable.table, moveCoords); //piece

  dbTable.moves.push(toPush);
  dbTable.table = moveIt(moveCoords, dbTable.table); //	<-= 1-= 1moves it

  dbTable.enPassantTarget =
    dbTable.table[moveCoords[2]][moveCoords[3]][1] === 1 && // moved a pawn
    Math.abs(moveCoords[1] - moveCoords[3]) === 2 // made 2 square move
      ? `${String.fromCharCode(moveCoords[0] + 97)}${(moveCoords[1] + moveCoords[3]) / 2 + 1}`
      : '-';

  dbTable.wNext = !dbTable.wNext;

  if (dbTable.wNext) dbTable.fullMoveNumber += 1;

  dbTable.pollNum += 1;
  dbTable.moveCount += 1;

  const { table, totalMoveCount } = addMovesToTable(dbTable.table, dbTable.wNext);
  dbTable.table = table;

  if (totalMoveCount === 0) {
    dbTable.completed = true;
    if (captured(dbTable.table, dbTable.wNext)) {
      dbTable[dbTable.wNext ? 'blackWon' : 'whiteWon'] = true;
    } else {
      dbTable.isDraw = true;
    }
  }

  var pushThis = tableToAptString(dbTable.table);
  dbTable.allPastTables.push(pushThis);
  return dbTable;
}

export function captured(table, isWhite) {
  var tempMoves = [];
  var myCol = 1;
  if (isWhite) myCol += 1; //myCol is 2 when white

  for (var i = 0; i < 8; i += 1) {
    for (var j = 0; j < 8; j += 1) {
      if (table[i][j][1] === 9 && table[i][j][0] === myCol) {
        //itt a kiraly

        tempMoves = bishopCanMove(i, j, isWhite, table, [0]);
        for (var tempMoveCount = 0; tempMoveCount < tempMoves.length; tempMoveCount += 1) {
          if (
            table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 5 ||
            table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 2
          ) {
            return true;
          }
        }
        tempMoves = rookCanMove(i, j, isWhite, table, [0]);
        for (var tempMoveCount = 0; tempMoveCount < tempMoves.length; tempMoveCount += 1) {
          if (
            table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 5 ||
            table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 4
          ) {
            return true;
          }
        }
        tempMoves = horseCanMove(i, j, isWhite, table, [0]);
        for (var tempMoveCount = 0; tempMoveCount < tempMoves.length; tempMoveCount += 1) {
          if (table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 3) {
            return true;
          }
        }
        if (isWhite ? j < 7 : j > 0) {
          tempMoves = pawnCanMove(i, j, isWhite, table, [0]);
          for (var tempMoveCount = 0; tempMoveCount < tempMoves.length; tempMoveCount += 1) {
            if (table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 1) {
              return true;
            }
          }
        }
        tempMoves = kingCanMove(i, j, isWhite, table, [0]);
        for (var tempMoveCount = 0; tempMoveCount < tempMoves.length; tempMoveCount += 1) {
          if (table[tempMoves[tempMoveCount][0]][tempMoves[tempMoveCount][1]][1] === 9) {
            return true;
          }
        }
      }
    }
  }
  return false;
}

export function moveIt(moveCoords, intable, dontProtect, hitValue) {
  if (hitValue === undefined) var hitValue = [0];
  var thistable = [];
  for (var i = 0; i < 8; i += 1) {
    thistable[i] = new Array(8);
    for (var j = 0; j < 8; j += 1) {
      // thistable[i][j] = intable[i][j].slice(0, 4)  //crashes in cordova, typedArray has no slice...
      thistable[i][j] = new Array(4);
      for (var k = 0; k < 4; k += 1) thistable[i][j][k] = intable[i][j][k];
    }
  }
  //itt indil sanc bastyatolas
  if (thistable[moveCoords[0]][moveCoords[1]][1] === 9 && thistable[moveCoords[0]][moveCoords[1]][3]) {
    // moving a king that hasnt moved yet
    switch (moveCoords[2]) {
      case 2:
        switch (moveCoords[3]) {
          case 0:
            thistable = moveIt([0, 0, 3, 0], thistable);
            break;
          case 7:
            thistable = moveIt([0, 7, 3, 7], thistable);
            break;
          default:
        }
        break;
      case 6:
        switch (moveCoords[3]) {
          case 0:
            thistable = moveIt([7, 0, 5, 0], thistable);
            break;
          case 7:
            thistable = moveIt([7, 7, 5, 7], thistable);
            break;
          default:
        }
        break;
      default:
    }
  }
  //es itt a vege

  //itt indul en passant mark the pawn to be hit

  //unmark all first

  for (let ij = 0; ij < 8; ij += 1) {
    thistable[ij][3][3] = false; //can only be in row 3 or 4

    thistable[ij][4][3] = false;
  }
  if (
    thistable[moveCoords[0]][moveCoords[1]][1] === 1 &&
    ((moveCoords[1] === 1 && moveCoords[3] === 3) || (moveCoords[1] === 6 && moveCoords[3] === 4))
  ) {
    //ha paraszt kettot lep

    thistable[moveCoords[0]][moveCoords[1]][3] = true; //[3]true for enpass
  }
  //es itt a vege

  //indul en passt lepett
  var enPass = false;
  if (
    thistable[moveCoords[0]][moveCoords[1]][1] === 1 && //paraszt
    thistable[moveCoords[2]][moveCoords[3]][0] === 0 && //uresre
    moveCoords[0] !== moveCoords[2] //keresztbe
  ) {
    enPass = true;
    thistable[moveCoords[2]][moveCoords[3]] = thistable[moveCoords[2]][moveCoords[1]];
    thistable[moveCoords[2]][moveCoords[1]] = [0, 0, false, false, false]; //ures
  }
  hitValue[0] = thistable[moveCoords[2]][moveCoords[3]][1]; //normal hivalue

  if (
    thistable[moveCoords[0]][moveCoords[1]][1] === 1 && //ha paraszt es
    // (thistable[moveCoords[0]][moveCoords[1]][0] === 2 && //es feher
    (moveCoords[3] === 7 || //es 8asra lep vagy
      // (thistable[moveCoords[0]][moveCoords[1]][0] === 1 && //vagy fekete
      moveCoords[3] === 0) //1re
  ) {
    //AKKOR
    thistable[moveCoords[0]][moveCoords[1]][1] = 5; //kiralyno lett
    hitValue[0] += PIECE_VALUES[5] - PIECE_VALUES[1]; //this move worth the difference betwwen queen's and pawn's value (5-1)
  }
  // // if(enPass) {
  // // 	hitValue = 0.99
  // // } else {
  // hitValue[0] = thistable[moveCoords[2]][moveCoords[3]][1]; //normal hivalue
  //   //- thistable[moveCoords[0]][moveCoords[1]][1] / 100 //whathits
  //   //}
  thistable[moveCoords[0]][moveCoords[1]][2] += 1; //times moved

  thistable[moveCoords[2]][moveCoords[3]] = thistable[moveCoords[0]][moveCoords[1]];
  thistable[moveCoords[0]][moveCoords[1]] = [0, 0, 0]; //, false, false, false]
  if (!(thistable[moveCoords[2]][moveCoords[3]][1] === 1)) {
    thistable[moveCoords[2]][moveCoords[3]][3] = false;
  }
  return thistable;
}

export function coordsToMoveString(a, b, c, d) {
  return String.fromCharCode(97 + a) + (b + 1) + String.fromCharCode(97 + c) + (d + 1);
}

function pawnCanMoveN(k, l, moveTable, /*protectedArray null ,*/ c /*, iHitMoves, /*protectScore, possibleMoves*/) {
  if (c === 2) {
    //white pawn
    pushAidXN(k, l, k + 1, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
    pushAidXN(k, l, k - 1, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
    return;
  }
  pushAidXN(k, l, k + 1, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidXN(k, l, k - 1, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
}

function rookCanMoveN(k, l, moveTable, /*protectedArray, */ c /*iHitMoves, protectScore, possibleMoves*/) {
  var i = k + 1;
  while (pushAidNN(k, l, i, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i += 1;
  i = k - 1;
  while (pushAidNN(k, l, i, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i -= 1;
  i = l + 1;
  while (pushAidNN(k, l, k, i, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i += 1;
  i = l - 1;
  while (pushAidNN(k, l, k, i, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i -= 1;
}

function bishopCanMoveN(k, l, moveTable, /*protectedArray, */ c /*iHitMoves, protectScore, possibleMoves*/) {
  var i = k + 1;
  var j = l + 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i += 1;
    j += 1;
  }
  i = k - 1;
  j = l - 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i -= 1;
    j -= 1;
  }
  i = k - 1;
  j = l + 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i -= 1;
    j += 1;
  }
  i = k + 1;
  j = l - 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i += 1;
    j -= 1;
  }
}

function queenCanMoveN(k, l, moveTable, /*protectedArray, */ c /*iHitMoves, protectScore, possibleMoves*/) {
  var i = k + 1;
  while (pushAidNN(k, l, i, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i += 1;
  i = k - 1;
  while (pushAidNN(k, l, i, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i -= 1;
  i = l + 1;
  while (pushAidNN(k, l, k, i, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i += 1;
  i = l - 1;
  while (pushAidNN(k, l, k, i, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) i -= 1;
  i = k + 1;
  var j = l + 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i += 1;
    j += 1;
  }
  i = k - 1;
  j = l - 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i -= 1;
    j -= 1;
  }
  i = k - 1;
  j = l + 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i -= 1;
    j += 1;
  }
  i = k + 1;
  j = l - 1;
  while (pushAidNN(k, l, i, j, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/)) {
    i += 1;
    j -= 1;
  }
}

function kingCanMoveN(k, l, moveTable, /*protectedArray, */ c /*iHitMoves, protectScore, possibleMoves*/) {
  pushAidN(k, l, k + 1, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 1, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k + 1, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 1, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k + 1, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 1, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  //sanc
  if (moveTable[k][l][3]) {
    //if the king hasnt moved yet,
    // ha nincs sakkban, nem is ugrik at sakkot, minden ures kozotte
    if (
      moveTable[0][l][3] && // unmoved rook on [0][l]
      moveTable[1][l][0] === 0 &&
      moveTable[2][l][0] === 0 &&
      moveTable[3][l][0] === 0
    ) {
      //empty between
      pushAidN(k, l, 2, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
    }
    if (moveTable[7][l][3] && moveTable[5][l][0] === 0 && moveTable[6][l][0] === 0) {
      // unmoved rook on [7][l] && empty between
      pushAidN(k, l, 6, l, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
    }
  }
}

function horseCanMoveN(k, l, moveTable, /*protectedArray, */ c /*iHitMoves, protectScore, possibleMoves*/) {
  pushAidN(k, l, k + 1, l + 2, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k + 1, l - 2, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 1, l + 2, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 1, l - 2, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k + 2, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k + 2, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 2, l + 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
  pushAidN(k, l, k - 2, l - 1, c, moveTable /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/);
}

function whatsThereN(i, j, table) {
  if (i >= 0 && j >= 0 && i <= 7 && j <= 7) return table[i][j];
  return [0];
}

function whatsThereNN(i, j, table) {
  if (i >= 0 && j >= 0 && i <= 7 && j <= 7) return table[i][j];
  return [3]; // off the table
}

function pushAidN(k, l, x, y, c, table /*protectedArray, iHitMoves, /*protectScore, possibleMoves*/) {
  var isThere = whatsThereN(x, y, table);
  if (isThere[0] !== 0) {
    //van ott vmi
    if (isThere[0] === c) {
      //my piece is there
      // protectScore[0] += 1;
      /* nem jott be */ table[x][y][3] = (table[x][y][3] || []).concat(table[k][l][1]); //protectedBy

      // protectedArray[x][y] = true; //protected		//moveit will clear, fastmove not???!!!
    } else {
      //opps piece is there
      // possibleMoves[8 * x + y] = true; // TODO: did this break the stats?
      /* nem jott be */ table[x][y][2] = (table[x][y][2] || []).concat(table[k][l][1]); //attackedBy

      // iHitMoves[iHitMoves.length] = [k, l, x, y, table[k][l][1], table[x][y][1]]; //[who k,l where to x,y who, hits]
    }
    return true;
  }
  // possibleMoves[8 * x + y] = true;
  return false;
}

function pushAidXN(k, l, x, y, c, table /* protectedArray, iHitMoves, /*protectScore, possibleMoves*/) {
  if (x < 0 || x > 7) return false; // off the table
  if (table[x][y][0] !== 0) {
    //van ott vmi
    if (table[x][y][0] === c) {
      //my piece is there
      // protectScore[0] += 1;

      /* nem jott be */ table[x][y][3] = (table[x][y][3] || []).concat(PIECE_VALUES[table[k][l][1]]); //protectedBy
      // protectedArray[x][y] = true; //protected
    } else {
      //opps piece is there
      // possibleMoves[8 * x + y] = true; // TODO: did this break the stats?
      // iHitMoves[iHitMoves.length] = [k, l, x, y, table[k][l][1], table[x][y][1]]; //[who k,l where to x,y who, hits]
      /* nem jott be */ table[x][y][2] = (table[x][y][2] || []).concat(PIECE_VALUES[table[k][l][1]]); //attackedBy
    }
    return true;
  }
  // possibleMoves[8 * x + y] = true;
  return false;
}

function pushAidNN(k, l, x, y, c, table /*protectedArray, iHitMoves, /*protectScore, possibleMoves*/) {
  // returns gofurther for rook, bishop or queen
  var isThere = whatsThereNN(x, y, table);
  if (isThere[0] === 3) return false; // off the table, dont go further
  if (isThere[0] === 0) {
    //ures mezo
    // possibleMoves[8 * x + y] = true;
    return true; // go further
  }
  if (isThere[0] === c) {
    //my piece is there
    // protectScore[0] += 1;
    // protectedArray[x][y] = true; //protected		//moveit will clear, fastmove not???!!!
    /* nem jott be */ table[x][y][3] = (table[x][y][3] || []).concat(PIECE_VALUES[table[k][l][1]]); //protectedBy
  } else {
    //opps piece is there
    // possibleMoves[8 * x + y] = true;
    /* nem jott be */ table[x][y][2] = (table[x][y][2] || []).concat(PIECE_VALUES[table[k][l][1]]); //attackedBy

    // iHitMoves[iHitMoves.length] = [k, l, x, y, table[k][l][1], table[x][y][1]]; //[who k,l where to x,y who, hits]
  }
  return false;
}

function fastMove(moveCoords, intable, dontProtect, hitValue) {
  var thistable = new Array(8);
  for (var i = 0; i < 8; i += 1) {
    thistable[i] = new Array(8);
    for (var j = 0; j < 8; j += 1) {
      thistable[i][j] = [intable[i][j][0], intable[i][j][1]]; //new Int8Array(2);
      // thistable[i][j][0] = intable[i][j][0];
      // thistable[i][j][1] = intable[i][j][1];
    }
  }
  if (thistable[moveCoords[0]][moveCoords[1]][1] === 9 && thistable[moveCoords[0]][moveCoords[1]][3]) {
    // moving a king that hasnt moved yet
    switch (moveCoords[2]) {
      case 2:
        switch (moveCoords[3]) {
          case 0:
            thistable = fastMove([0, 0, 3, 0], thistable);
            break;
          case 7:
            thistable = fastMove([7, 0, 5, 0], thistable);
            break;
          default:
        }
        break;
      case 7:
        switch (moveCoords[3]) {
          case 0:
            thistable = fastMove([0, 7, 3, 7], thistable);
            break;
          case 7:
            thistable = fastMove([7, 7, 5, 7], thistable);
            break;
          default:
        }
        break;
      default:
    }
  }
  if (
    thistable[moveCoords[0]][moveCoords[1]][1] === 1 && //ha paraszt es
    (moveCoords[3] === 7 || //es 8asra lep vagy
      moveCoords[3] === 0) //1re
  ) {
    // THEN
    thistable[moveCoords[0]][moveCoords[1]][1] = 5; //kiralyno lett
  }
  thistable[moveCoords[2]][moveCoords[3]] = thistable[moveCoords[0]][moveCoords[1]];
  thistable[moveCoords[0]][moveCoords[1]] = [0, 0, 0]; //, false, false, false]
  return thistable;
}

function newCanMove(k, l, moveTable, c) {
  switch (moveTable[k][l][1]) {
    case 1:
      pawnCanMoveN(k, l, moveTable, /*null protectedArray,*/ c /* iHitMoves, protectScore/*, possibleMoves*/);
      return PREFER_CENTER_TABLE[k][l];
    case 2:
      bishopCanMoveN(k, l, moveTable, /*null protectedArray,*/ c /* iHitMoves, protectScore/*, possibleMoves*/);
      return PREFER_CENTER_TABLE[k][l] * 3;
    case 3:
      horseCanMoveN(k, l, moveTable, /*null protectedArray,*/ c /* iHitMoves, protectScore/*, possibleMoves*/);
      return PREFER_CENTER_TABLE[k][l] * 3;
    case 4:
      rookCanMoveN(k, l, moveTable, /*null protectedArray,*/ c /* iHitMoves, protectScore/*, possibleMoves*/);
      return PREFER_CENTER_TABLE[k][l] * 5;
    case 5:
      queenCanMoveN(k, l, moveTable, /*null protectedArray,*/ c /* iHitMoves, protectScore/*, possibleMoves*/);
      return PREFER_CENTER_TABLE[k][l] * 9;
    case 9:
      kingCanMoveN(k, l, moveTable, /*null protectedArray,*/ c /* iHitMoves, protectScore/*, possibleMoves*/);
      return 0;
  }
}

// hitScore * 400 + allHitScore * 5 + attackScore + protectScore + centerScore
// const stats = {
//   hitScoreMin: 0,
//   allHitScoreMin: 0,
//   attackScoreMin: 0,
//   protectScoreMin: 0,
//   centerScoreMin: 0,
//   timeout: null,
//   hitScoreMax: 0,
//   allHitScoreMax: 0,
//   attackScoreMax: 0,
//   protectScoreMax: 0,
//   centerScoreMax: 0,
// };

export function getHitScores(origTable, wNext) {
  const c = wNext ? 2 : 1;

  let centerScore = 0;

  // write data on cells
  for (var lookI = 0; lookI < 8; lookI += 1) {
    for (var lookJ = 0; lookJ < 8; lookJ += 1) {
      //look through the table
      const pieceColor = origTable[lookI][lookJ][0];
      if (pieceColor === 0) continue; // empty cell
      if (pieceColor === c) {
        centerScore += newCanMove(lookI, lookJ, origTable, pieceColor);
        continue;
      }
      centerScore -= newCanMove(lookI, lookJ, origTable, pieceColor);
    }
  }

  // if (Math.random() < 0.00001) console.log({ centerScore })

  // process that data gathered above
  let hitScore = 0;
  let allHitScore = 0;
  let protectScore = 0;
  let attackScore = 0;

  for (var lookI = 0; lookI < 8; lookI += 1) {
    cellLoop: for (var lookJ = 0; lookJ < 8; lookJ += 1) {
      //look through the table
      if (
        origTable[lookI][lookJ][0] === 0 || // empty cell
        !(
          (
            origTable[lookI][lookJ][2] || // not attacked cell
            origTable[lookI][lookJ][3]
          ) // not protected cell
        )
      )
        continue cellLoop; // nothing to do here

      if (origTable[lookI][lookJ][0] === c) {
        // my piece, will count attack/protect scores, but not hitscore
        if (origTable[lookI][lookJ][2]) {
          attackScore -= ATTACK_VALUES[origTable[lookI][lookJ][1]]; // if attacked deduckt pieceVal from attack score
          if (origTable[lookI][lookJ][1] === 9) {
            // king is captured. we're not sure if this is the end or just check
            // hitScore -= 10000;
            return -300;
          }
        }
        if (origTable[lookI][lookJ][3])
          protectScore += origTable[lookI][lookJ][3].length * PREFER_CENTER_TABLE[lookI][lookJ]; // if protected add protector count to protect score
        continue cellLoop; // nothing else to do here
      }

      if (origTable[lookI][lookJ][0] !== c && hitScore >= 0) {
        // opponent's piece
        if (origTable[lookI][lookJ][3])
          protectScore -= origTable[lookI][lookJ][3].length * PREFER_CENTER_TABLE[lookI][lookJ]; // if protected deduct protector count from protect score
        if (!origTable[lookI][lookJ][2]) continue cellLoop; // if not attacked then we're done here

        attackScore += ATTACK_VALUES[origTable[lookI][lookJ][1]]; // add pieceVal to attack score

        let thisCellValue = 0;
        let weakestProtector;
        let weakestAttacker;
        let hasMoreAttackers;
        let hasMoreProtectors;

        if (!origTable[lookI][lookJ][3]) {
          // cell has no protector
          // this cell can be hit, add value and check next cell
          const thisHitScore = PIECE_VALUES[origTable[lookI][lookJ][1]];
          allHitScore += thisHitScore;
          hitScore = Math.max(hitScore, thisHitScore);
          continue cellLoop;
        }
        // cell has protector

        thisCellValue += PIECE_VALUES[origTable[lookI][lookJ][1]]; // add cell value

        origTable[lookI][lookJ][2].sort((a, b) => b - a); // weakest attacker to the end;
        weakestAttacker = origTable[lookI][lookJ][2].pop();

        origTable[lookI][lookJ][3].sort((a, b) => b - a); // weakest protector to the end;
        weakestProtector = origTable[lookI][lookJ][3].pop();

        hasMoreAttackers = origTable[lookI][lookJ][2].length !== 0;
        if (
          hasMoreAttackers &&
          weakestAttacker < weakestProtector // the protector worth more than the 1st attacker used
        ) {
          // break here, protector will not be used, doesn't worth it
          allHitScore += thisCellValue;
          hitScore = Math.max(hitScore, thisCellValue);
          continue cellLoop;
        }
        // weakest attacker will be hit

        thisCellValue -= weakestAttacker; // deduct weakest attacker

        if (!hasMoreAttackers) {
          // no more attackers
          if (thisCellValue > 0) {
            allHitScore += thisCellValue;
            hitScore = Math.max(hitScore, thisCellValue);
          } //hitScore += thisCellValue; // add cellvalue if worth to hit
          continue cellLoop;
        }
        // there are more attackers

        weakestAttacker = origTable[lookI][lookJ][2].pop(); // second weakest
        hasMoreProtectors = origTable[lookI][lookJ][3].length !== 0;
        while (true) {
          if (hasMoreProtectors && weakestProtector < weakestAttacker) {
            // break here, attacker will not be used, doesn't worth it
            if (thisCellValue > 0) {
              // add cellvalue if worth to hit
              allHitScore += thisCellValue;
              hitScore = Math.max(hitScore, thisCellValue);
            }
            continue cellLoop;
          }
          // weakest protector will be hit

          thisCellValue += weakestProtector; // add weakest protector value

          // while (true) {
          if (!hasMoreProtectors) {
            // no more protectors
            if (thisCellValue > 0) {
              // add cellvalue if worth to hit
              allHitScore += thisCellValue;
              hitScore = Math.max(hitScore, thisCellValue);
            }
            continue cellLoop;
          }
          // there are more protectors

          weakestProtector = origTable[lookI][lookJ][3].pop();
          hasMoreAttackers = origTable[lookI][lookJ][2].length !== 0;

          if (hasMoreAttackers && weakestAttacker < weakestProtector) {
            // break here, attacker will not be used, doesn't worth it
            if (thisCellValue > 0) {
              // add cellvalue if worth to hit
              allHitScore += thisCellValue;
              hitScore = Math.max(hitScore, thisCellValue);
            }
            continue cellLoop;
          }
          // weakest attacker will be hit

          thisCellValue -= weakestAttacker;

          if (!hasMoreAttackers) {
            // no more attackers
            if (thisCellValue > 0) {
              // add cellvalue if worth to hit
              allHitScore += thisCellValue;
              hitScore = Math.max(hitScore, thisCellValue);
            }
            continue cellLoop;
          }
          // there are more attackers

          weakestAttacker = origTable[lookI][lookJ][2].pop();
          hasMoreProtectors = origTable[lookI][lookJ][3].length !== 0;
        }
      }
    }
  }

  // stats.hitScoreMin = Math.min(stats.hitScoreMin, hitScore);
  // stats.allHitScoreMin = Math.min(stats.allHitScoreMin, allHitScore);
  // stats.attackScoreMin = Math.min(stats.attackScoreMin, attackScore);
  // stats.protectScoreMin = Math.min(stats.protectScoreMin, protectScore);
  // stats.centerScoreMin = Math.min(stats.centerScoreMin, centerScore);

  // stats.hitScoreMax = Math.max(stats.hitScoreMax, hitScore);
  // stats.allHitScoreMax = Math.max(stats.allHitScoreMax, allHitScore);
  // stats.attackScoreMax = Math.max(stats.attackScoreMax, attackScore);
  // stats.protectScoreMax = Math.max(stats.protectScoreMax, protectScore);
  // stats.centerScoreMax = Math.max(stats.centerScoreMax, centerScore);

  // if (stats.timeout) clearTimeout(stats.timeout);
  // stats.timeout = setTimeout(() => {console.log(stats)}, 500)

  return hitScore * 400 + /* allHitScore */ +attackScore + protectScore + centerScore;
}

export function solveDeepeningTask(deepeningTask, isSdt) {
  //designed to solve the whole deepening task on one thread
  //will return number of smallTasks solved for testing??!!!!!!!!!!!!!!!
  //var taskValue = deepeningTask.
  var retProgress = deepeningTask.progress;

  // var startedAt = new Date().getTime()
  if (isSdt) {
    //we are in worker, received 2nd depth table already processed with oneDeeper()
    //this table is after his first return move
    //not filtered move, could be that we can hit the king now
    //if we can, then this is a wrong move, need to throw away the whole lot!!!!!!!!!!!!!!!!!
    var tempDeepeningTask = {
      desiredDepth: deepeningTask.desiredDepth,
      smallDeepeningTasks: [deepeningTask],
      // mod: deepeningTask.mod,
      shouldIDraw: deepeningTask.shouldIDraw,
      currentBests: deepeningTask.currentBests,
    };
    deepeningTask = tempDeepeningTask;
  }

  var resolverArray = []; //multidim, for each depth the results, will be updated a million times

  // TODO: why is this +2?
  var p2 = deepeningTask.desiredDepth + 2;
  for (var i = 0; i < p2; i += 1) {
    resolverArray[i] = [];
  }

  const currentBests = deepeningTask.currentBests;

  while (deepeningTask.smallDeepeningTasks.length > 0) {
    //length is 1 at first, then just grows until all has reached the level. evetually there will be nothing to do and this loop exists

    var smallDeepeningTask = deepeningTask.smallDeepeningTasks.pop();

    try {
      var resultingSDTs = solveSmallDeepeningTask(smallDeepeningTask, resolverArray, deepeningTask.smallDeepeningTasks);

      for (var l = resultingSDTs.length - 1; l >= 0; l -= 1) {
        deepeningTask.smallDeepeningTasks[deepeningTask.smallDeepeningTasks.length] = resultingSDTs[l]; //at the beginning the unsent array is just growing but then we run out
      }
    } catch (e) {
      if (e !== 'illegal') throw e;
    }

    //call it again if there are tasks
  }
  // var timeItTook = new Date()
  //   .getTime() - startedAt

  if (!resolverArray[2][0]) return null;

  var ret = {
    // gameNum: deepeningTask.gameNum,
    progress: retProgress,
    // timeItTook: timeItTook,
    currentBests,
    score: resolverArray[2][0].value,
    moveTree: resolverArray[2][0].moveTree, //.join(',')
  };
  if (isSdt !== true) {
    ret.score = resolverArray[1][0].value;
  }
  return ret;
}

export function oneDeeper(deepeningTask) {
  //only takes original first level deepeningtasks??
  var resolverArray = [];
  var smallDeepeningTask = deepeningTask.smallDeepeningTasks.pop();
  var tempTasks = solveSmallDeepeningTask(
    smallDeepeningTask,
    smallDeepeningTask.resolverArray,
    deepeningTask.smallDeepeningTasks,
  ); //, counter)
  while (tempTasks.length > 0) {
    var tempTask = tempTasks.pop();
    deepeningTask.smallDeepeningTasks[deepeningTask.smallDeepeningTasks.length] = tempTask;
  }
  deepeningTask.smallDeepeningTasksCopy = deepeningTask.smallDeepeningTasks.slice();
  deepeningTask.resolverArray = resolverArray;
}

export function resolveDepth(
  depth,
  resolverArray,
  currentBests = [],
  remaingSdts = [{ trItm: true }, { trItm: true }],
  sdt = {},
) {
  const inverse = depth & 1;
  var raDm1 = resolverArray[depth - 1];

  if (resolverArray[depth].length === 0) {
    // there are no valid return moves
    if (depth === 2) {
      const isWin = captured(sdt.thisTaskTable, !inverse);

      if (isWin) {
        raDm1[raDm1.length] = {
          value: 30000,
          moveTree: [sdt.moveStr, 'WIN'],
        };

        resolverArray[depth] = [];
        delete currentBests[depth];
        return;
      }
      // this move would yield a draw.

      if (sdt.shouldIDraw) {
        raDm1[raDm1.length] = {
          value: 6000,
          moveTree: [sdt.moveStr, 'DRAW'],
        };

        resolverArray[depth] = [];
        delete currentBests[depth];
        return;
      }

      raDm1[raDm1.length] = {
        value: -6000,
        moveTree: [sdt.moveStr, 'DRAW'],
      };

      resolverArray[depth] = [];
      delete currentBests[depth];
      return;
    }

    raDm1[raDm1.length] = {
      value: inverse ? -10000000 : 10000000,
      moveTree: sdt.moveTree,
    };

    resolverArray[depth] = [];
    delete currentBests[depth];
    return;
  }
  if (inverse) {
    raDm1[raDm1.length] = resolverArray[depth].reduce(function (previousValue, currentValue, index, array) {
      if (currentValue.value > previousValue.value) {
        return {
          value: currentValue.value,
          moveTree: currentValue.moveTree,
        };
      } else {
        return {
          value: previousValue.value,
          moveTree: previousValue.moveTree,
        };
      }
    });

    currentBests[depth - 1] =
      typeof currentBests[depth - 1] === 'undefined'
        ? raDm1[raDm1.length - 1].value
        : Math.min(currentBests[depth - 1], raDm1[raDm1.length - 1].value);

    if (currentBests[depth - 2] >= currentBests[depth - 1] && remaingSdts.length) {
      let lastTrItmIndex = remaingSdts.length - 1;
      while (!remaingSdts[lastTrItmIndex].trItm) lastTrItmIndex -= 1;
      remaingSdts.length = lastTrItmIndex + 1;
    }
  } else {
    raDm1[raDm1.length] = resolverArray[depth].reduce(function (previousValue, currentValue, index, array) {
      if (currentValue.value < previousValue.value) {
        return {
          value: currentValue.value,
          moveTree: currentValue.moveTree,
        };
      } else {
        return {
          value: previousValue.value,
          moveTree: previousValue.moveTree,
        };
      }
    });

    currentBests[depth - 1] =
      typeof currentBests[depth - 1] === 'undefined'
        ? raDm1[raDm1.length - 1].value
        : Math.max(currentBests[depth - 1], raDm1[raDm1.length - 1].value);

    if (currentBests[depth - 2] <= currentBests[depth - 1]) {
      let lastTrItmIndex = remaingSdts.length - 1;
      while (!remaingSdts[lastTrItmIndex].trItm) lastTrItmIndex -= 1;
      remaingSdts.length = lastTrItmIndex + 1;
    }
  }

  resolverArray[depth] = [];
  delete currentBests[depth];
}
// var SmallDeepeningTask = function (table, wNext, depth, moveTree, desiredDepth, score, stopped, gameNum, mod, shouldIDraw, moveCountTree) {
//   // runs millions of times
//   this.gameNum = gameNum
//   this.table = table
//   this.wNext = wNext
//   this.depth = depth
//   this.moveTree = moveTree
//   this.desiredDepth = desiredDepth
//   this.score = score
//   this.mod = mod
//   this.shouldIDraw = shouldIDraw
//   this.moveCountTree = moveCountTree
// }

export const DeepeningTask = function (smallMoveTask) {
  //keep this fast, designed for main thread and mainWorker ???not sure..     //smallMoveTask is a smallMoveTask, to be deepend further
  // runs once for each possible return move. few dozen times max per move
  this.shouldIDraw = smallMoveTask.sharedData.shouldIDraw;
  this.currentBests = smallMoveTask.sharedData.currentBests;
  this.firstLevelMoveCount = smallMoveTask.firstLevelMoveCount;
  this.mod = smallMoveTask.mod;
  this.gameNum = smallMoveTask.sharedData.gameNum;
  this.progress = smallMoveTask.progress;
  this.resolverArray = [];
  this.initialWNext = smallMoveTask.sharedData.origWNext;
  this.moveStr = smallMoveTask.moveCoords;
  this.initialTreeMoves = [this.moveStr]; //to put in first smallmovetask
  this.startingTable = smallMoveTask.sharedData.origTable; //this was calculated in advance when getting the first moves: that resulted in this.everything
  this.startingAllPastTables = smallMoveTask.sharedData.allPast;
  this.thisTaskTable = moveIt(this.moveStr, this.startingTable, true); //this is the first and should be only time calculating this!!!!!
  //takes time

  const pawnMoveVal =
    this.startingTable[smallMoveTask.moveCoords[0]][smallMoveTask.moveCoords[1]][1] === 1
      ? this.initialWNext
        ? smallMoveTask.moveCoords[1] - 1
        : 6 - smallMoveTask.moveCoords[1]
      : 0;

  this.firstDepthValue =
    PIECE_VALUES[this.startingTable[smallMoveTask.moveCoords[2]][smallMoveTask.moveCoords[3]][1]] * 400 + pawnMoveVal; //smallMoveTask.firstDepthValue

  if (
    this.startingTable[smallMoveTask.moveCoords[0]][smallMoveTask.moveCoords[1]][1] === 1 &&
    [0, 7].includes(smallMoveTask.moveCoords[3])
  ) {
    // pawn becomes queen
    this.firstDepthValue += (PIECE_VALUES[5] - PIECE_VALUES[1]) * 400;
  }

  this.initialTreeMoves = [this.moveStr, this.firstDepthValue]; //to put in first smallmovetask
  this.desiredDepth = smallMoveTask.sharedData.desiredDepth; //we will deepen until depth reaches this number
  this.actualDepth = 1; //its 1 because we have 1st level resulting table fixed.
  //increase this when generating deeper tables, loop while this is smaller than desiredDepth

  //this task should be sent back to the server so lets ke

  this.tableTree = []; //fill multiDIM array with resulting tables during processing
  this.moveStrTree = []; //twin array with movesString

  this.tableTree[0] = [this.startingTable]; // depth 0 table, startingTable: only one in an array

  this.tableTree[1] = [this.thisTaskTable]; // depth 1 tables, we only have one in this task but there are more in total

  this.tableTree[2] = []; // depth 2 tables are empty at init, we will fill these in when processing this deepeningTask. after each depth we'll create the next empty array

  //there will be more levels here with a lot of tables

  //moveStings is one level deeper array, strings get longer each level to keep track of table!!!!!!
  this.moveStrTree[0] = [[]]; //???					// depth 0 movestrings, meaning 'how did we get here?'	these are always unknown

  this.moveStrTree[1] = [[this.moveStr]]; // depth 1 movestrings, meaning 'how did we get here?', we only have one in this task but there are more in total

  this.moveStrTree[2] = [[]]; // depth 2 movestrings, meaning 'how did we get here?', we will fill these together with the tableTree, all indexes will match as move=>resulting table

  //there will be more levels here with a lot of moveStrings

  this.smallDeepeningTaskCounts = [0, 1]; //this will be an array of the total created smalldeepeningtasks per depth, depth 0 has 0, depth 1 has one in this splitmove

  var initialSmallDeepeningTask = {
    // gameNum: this.gameNum,
    table: this.thisTaskTable,
    wNext: !this.initialWNext,
    depth: this.actualDepth,
    moveTree: this.initialTreeMoves,
    desiredDepth: this.desiredDepth,
    score: this.firstDepthValue,
    // mod: this.mod,
    shouldIDraw: this.shouldIDraw,
    moveCountTree: [this.firstLevelMoveCount],
    currentBests: this.currentBests,
  };
  this.smallDeepeningTasks = [initialSmallDeepeningTask]; //to be sent out for multiplying when processing for level 2 (unless desireddepth is 1)
  //this.pendingSmallDeepeningTasks=[]				//here we will keep the pending smalltasks: sent out
  this.solvedSmallDeepeningTasks = []; //here we will keep the results until stepping to next depth, ready for next level when this.length equals count
};

export function singleThreadAi(tempDbTable, depth, cb, mod) {
  var dbTable = JSON.parse(JSON.stringify(tempDbTable));
  dbTable.moveTask = new MoveTaskN(dbTable, mod);
  dbTable.moveTask.sharedData.desiredDepth = depth;
  var tempMoves = new SplitMove(dbTable).movesToSend;
  var result = [];
  tempMoves.forEach(function (smallMoveTask, index) {
    var deepeningTask = new DeepeningTask(smallMoveTask);
    oneDeeper(deepeningTask); //this will make about 30 smalldeepeningtasks from the initial 1 and create deepeningtask.resolverarray
    //first item in deepeningtask.smalldeepeningtasks is trigger
    var res = [];
    while (deepeningTask.smallDeepeningTasks.length > 1) {
      var smallDeepeningTask = deepeningTask.smallDeepeningTasks.pop();
      smallDeepeningTask.progress = deepeningTask.progress;
      var res2 = solveDeepeningTask(smallDeepeningTask, true);
      res2.value = res2.score;
      res[res.length] = res2;
    }

    var tempResolveArray = [[], res, []];
    resolveDepth(2, tempResolveArray, smallDeepeningTask.currentBests);

    var pushAgain = tempResolveArray[1][0];
    var moveCoords = pushAgain.moveTree[0]; //.slice(0, 4)

    pushAgain.score = pushAgain.value;
    pushAgain.move = moveCoords;
    result[result.length] = pushAgain;
  });

  result.sort((a, b) => b.score - a.score);

  var finalResult = {
    result: result,
    winningMove: result[0],
    moveCoords: result[0].moveTree[0], //.slice(0, 4)
  };
  if (cb) cb(finalResult);
  return finalResult;
}

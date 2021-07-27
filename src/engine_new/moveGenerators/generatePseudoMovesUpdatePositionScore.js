import { getBishopMovesUpdPosVal } from "./getBishopMovesUpdPosVal";
import { getKingMovesUpdPosVal } from "./getKingMovesUpdPosVal";
import { getKnightMovesUpdPosVal } from "./getKnightMovesUpdPosVal";
import { getPawnMovesUpdPosVal } from "./getPawnMovesUpdPosVal";
import { getQueenMovesUpdPosVal } from "./getQueenMovesUpdPosVal";
import { getRookMovesUpdPosVal } from "./getRookMovesUpdPosVal";

const moveGenerators = [
  null,
  getPawnMovesUpdPosVal,
  getBishopMovesUpdPosVal,
  getKnightMovesUpdPosVal,
  getRookMovesUpdPosVal,
  getQueenMovesUpdPosVal,
  getKingMovesUpdPosVal,
];

export const generatePseudoMovesUpdatePositionScore = (board, posVal) => {
  const targets = [];
  const color = board[64];
  const kingCell = board.indexOf(6 + ((color ^ 1) << 3));

  const myPosVal = new Int8Array([0]);
  const oppsPosVal = new Int8Array([0]);
  const movesVal = new Int8Array([0]);

  for (let cellIndex = 63; cellIndex >= 0; cellIndex -= 1) {
    if (board[cellIndex] === 0) continue;  // empty cell

    if (board[cellIndex] >>> 3 !== color) {
      // opponents piece
      movesVal[0] -= moveGenerators[board[cellIndex] & 7](cellIndex, board, color ^ 1, oppsPosVal).length;
      continue;
    }
    // our piece
    const targetIndexes = moveGenerators[board[cellIndex] & 7](cellIndex, board, color, myPosVal);
    if (!targetIndexes.length) continue;
    
    movesVal[0] += targetIndexes.length;

    const sourcePart = cellIndex << 10;
    for (const targetIndex of targetIndexes) {
      if (targetIndex === kingCell) throw false;
      targets[targets.length] = sourcePart + targetIndex;
    }
  }

  posVal[0] += color ? myPosVal[0] - oppsPosVal[0] + movesVal[0] : oppsPosVal[0] - myPosVal[0] - movesVal[0];

  return targets;
};

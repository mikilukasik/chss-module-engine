import { isCaptured } from "../../../../chss-app-game-client/chss-module-engine/src/engine_new/utils/isCaptured";
import { evalOnNN } from "../../engine/ai";
import { generatePseudoMovesThrowMethod } from "../moveGenerators/generatePseudoMovesThrowMethod";
import { generatePseudoMovesThrowMethodNoOrder } from "../moveGenerators/generatePseudoMovesThrowMethodNoOrder";
import { board2fen } from "../transformers/board2fen";
import { move2moveString } from "../transformers/move2moveString";
import { getMovedBoard } from "../utils/getMovedBoard";
import { evaluateBoard } from "./evaluateBoard";

let logTimeout;

export const evaluateMove = ({ board, move, currentBests: _currentBests, depth: _depth, desiredDepth, moveTree, origMove, repeatedPastFens, dontLoop }) => {
  const depth = _depth || desiredDepth - 2;
  const movedBoard = getMovedBoard(move, board);
  const boardsPerDepth = [[movedBoard]];
  const movesPerDepth = [[move]];
  const moveIndexPerDepth = new Int8Array(depth + 1);
  const scorePerDepth = new Int8Array(Array.from({ length: depth + 1 }).map(() => -128));
  const currentBests = new Int8Array(_currentBests || Array.from({ length: depth + 1 }).map(() => -128));
  const moveTreePerDepth = [];

  let currentDepth = 0;

  mainloop:
  while (true) {
    if (moveIndexPerDepth[currentDepth] === movesPerDepth[currentDepth].length) {
      // all moves processed on this depth. go back and process scores

      if (currentDepth === 0) break mainloop;
      const cdm1 = currentDepth - 1;
      
      if (
        (scorePerDepth[cdm1] === -128) ||
        (boardsPerDepth[cdm1][0][64] === 1 && scorePerDepth[cdm1] > scorePerDepth[currentDepth]) ||
        (boardsPerDepth[cdm1][0][64] === 0 && scorePerDepth[cdm1] < scorePerDepth[currentDepth])
      ) {
        scorePerDepth[cdm1] = scorePerDepth[currentDepth];
        moveTreePerDepth[cdm1] = moveTreePerDepth[currentDepth];

        if (
          (currentBests[cdm1] === -128) ||
          (boardsPerDepth[cdm1][0][64] === 1 && currentBests[cdm1] > currentBests[currentDepth]) ||
          (boardsPerDepth[cdm1][0][64] === 0 && currentBests[cdm1] < currentBests[currentDepth])
        ) {
          currentBests[cdm1] = scorePerDepth[cdm1];

          if (
            currentBests[currentDepth - 2] !== -128 &&
            ((boardsPerDepth[cdm1][0][64] === 1 && currentBests[currentDepth - 2] >= currentBests[cdm1]) ||
            (boardsPerDepth[cdm1][0][64] === 0 && currentBests[currentDepth - 2] <= currentBests[cdm1]))
           ) {
            // prune
            moveIndexPerDepth[cdm1] = movesPerDepth[cdm1].length;
            currentBests[currentDepth] = -128;
            currentDepth = cdm1;
            continue mainloop;
          }
        }
      }

      moveIndexPerDepth[cdm1] += 1;
      currentBests[currentDepth] = -128;
      currentDepth = cdm1;
      continue mainloop;
    }

    if (currentDepth < depth) {
      // go deeper
      const cdp1 = currentDepth + 1;
      const boardToProcess = boardsPerDepth[currentDepth][moveIndexPerDepth[currentDepth]];

      try {
        if (cdp1 === depth) {
          movesPerDepth[cdp1] = generatePseudoMovesThrowMethodNoOrder(boardToProcess);
        } else {
          movesPerDepth[cdp1] = generatePseudoMovesThrowMethod(boardToProcess);
        }


        if (moveTree[currentDepth]) {
          const previousCutMoveIndex = movesPerDepth[cdp1].indexOf(moveTree[currentDepth]);
          if (previousCutMoveIndex > 0) {
            movesPerDepth[cdp1].splice(previousCutMoveIndex, 1);
            movesPerDepth[cdp1].unshift(moveTree[currentDepth]);
          }
        }
      } catch (e) {
        if (e) throw e;
        // board is illegal, so the move that got us here was illegal
        
        moveIndexPerDepth[currentDepth] += 1;

        if (currentDepth > 0 && moveIndexPerDepth[currentDepth] === movesPerDepth[currentDepth].length && scorePerDepth[currentDepth] === -128) {
            const stalledBoard = boardsPerDepth[currentDepth - 1][moveIndexPerDepth[currentDepth - 1]];

          
            if (isCaptured(stalledBoard, stalledBoard.indexOf(6 + ((stalledBoard[64]) << 3)), stalledBoard[64])) {
              // checkmate

              scorePerDepth[currentDepth] = stalledBoard[64] ? currentDepth - 110 : 110 - currentDepth;
            } else {
              //draw
            }
        }

        continue mainloop;
      }

      moveIndexPerDepth[cdp1] = 0;
      scorePerDepth[cdp1] = -128;
      // currentBests[cdp1] = -128; // debug: this had no effect?
      boardsPerDepth[cdp1] = movesPerDepth[cdp1].map(nextDepthMove => getMovedBoard(nextDepthMove, boardToProcess));

      currentDepth = cdp1;
      continue mainloop;
    }

    if (currentDepth === depth) {
      // desiredDepth reached, evaluate board
      try {
        const score = evaluateBoard(boardsPerDepth[currentDepth][moveIndexPerDepth[currentDepth]]); 
        if (
          // no score for this level (1st board) or score is better than what we already have
          (scorePerDepth[currentDepth] === -128) ||
          (boardsPerDepth[currentDepth][0][64] === 1 && scorePerDepth[currentDepth] > score) ||
          (boardsPerDepth[currentDepth][0][64] === 0 && scorePerDepth[currentDepth] < score)
        ) {
          const cdm1 = currentDepth - 1;
          
          // set this score for this depth (desiredDepth)
          scorePerDepth[currentDepth] = score;
          moveTreePerDepth[currentDepth] = Array.from(moveIndexPerDepth).map((mi, d) => movesPerDepth[d][mi]);
          
          if (
            // we have currentBest for depth - 1 and that's better than what we got here
            currentBests[cdm1] !== -128 &&
            ((boardsPerDepth[currentDepth][0][64] === 1 && score <= currentBests[cdm1]) ||
            (boardsPerDepth[currentDepth][0][64] === 0 && score >= currentBests[cdm1]))
          ) {
            // prune this branch
            moveIndexPerDepth[currentDepth] = boardsPerDepth[currentDepth].length;
            continue mainloop;
          }
        }
  
      } catch (e) {
        if (e) throw e;
        moveIndexPerDepth[currentDepth] += 1;

        if (moveIndexPerDepth[currentDepth] === movesPerDepth[currentDepth].length && scorePerDepth[currentDepth] === -128) {
          const stalledBoard = boardsPerDepth[currentDepth - 1][moveIndexPerDepth[currentDepth - 1]];

          if (isCaptured(stalledBoard, stalledBoard.indexOf(6 + ((stalledBoard[64]) << 3)), stalledBoard[64])) {
            // checkmate

            scorePerDepth[currentDepth - 1] = stalledBoard[64] ? -110 : 110;
          } else {
            //draw
          }
        }

        continue mainloop;
      }
  
      moveIndexPerDepth[currentDepth] += 1;

      continue mainloop;
    }
  }

  const aiVal = evalOnNN(movedBoard)[0] - 0.5;

  let loopScore = 0;
  if (repeatedPastFens.includes(board2fen(movedBoard))) {
    // move would loop
    loopScore = -10;

    if (!dontLoop) loopScore *= -1;
    if (movedBoard[64] === 0) loopScore *= -1;
  }

  return { score: scorePerDepth[0] + loopScore + aiVal, aiVal, currentBests, moveTree: moveTreePerDepth[0] };
};

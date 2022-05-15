import { isCaptured } from '../../../../chss-app-game-client/chss-module-engine/src/engine_new/utils/isCaptured.js';
import { generatePseudoMovesThrowMethod } from '../moveGenerators/generatePseudoMovesThrowMethod.js';
import { generatePseudoMovesUpdatePositionScore } from '../moveGenerators/generatePseudoMovesUpdatePositionScore.js';
import { board2fen } from '../transformers/board2fen.js';
import { getMovedBoard } from '../utils/getMovedBoard.js';
import { evaluateBoard } from './evaluateBoard.js';

export const evaluateMove = ({
  board,
  move,
  currentBests: _currentBests,
  depth: _depth,
  desiredDepth,
  moveTree,
  origMove,
  repeatedPastFens,
  dontLoop,
}) => {
  const depth = _depth || desiredDepth - 2;
  const movedBoard = getMovedBoard(move, board);
  const boardsPerDepth = [[movedBoard]];
  const movesPerDepth = [[move]];
  const moveIndexPerDepth = new Int8Array(depth + 1);
  const scorePerDepth = new Int16Array(Array.from({ length: depth + 1 }).map(() => -32768));
  const currentBests = new Int16Array(_currentBests || Array.from({ length: depth + 1 }).map(() => -32768));
  const moveTreePerDepth = [];
  const posVals = [];

  let currentDepth = 0;

  mainloop: while (true) {
    if (moveIndexPerDepth[currentDepth] === movesPerDepth[currentDepth].length) {
      // all moves processed on this depth. go back and process scores

      if (currentDepth === 0) break mainloop;
      const cdm1 = currentDepth - 1;
      if (scorePerDepth[cdm1] === -32768) {
        scorePerDepth[cdm1] =
          scorePerDepth[currentDepth] /* + validMoveCounts[currentDepth] * (boardsPerDepth[cdm1][0][64] ? 1 : -1) */;
        moveTreePerDepth[cdm1] = moveTreePerDepth[currentDepth];

        if (
          currentBests[cdm1] === -32768 ||
          (boardsPerDepth[cdm1][0][64] === 1 &&
            currentBests[cdm1] > currentBests[currentDepth]) /* + validMoveCounts[currentDepth] */ ||
          (boardsPerDepth[cdm1][0][64] === 0 &&
            currentBests[cdm1] < currentBests[currentDepth]) /* - validMoveCounts[currentDepth] */
        ) {
          currentBests[cdm1] = scorePerDepth[cdm1];

          if (
            currentBests[currentDepth - 2] !== -32768 &&
            ((boardsPerDepth[cdm1][0][64] === 1 && currentBests[currentDepth - 2] >= currentBests[cdm1]) ||
              (boardsPerDepth[cdm1][0][64] === 0 && currentBests[currentDepth - 2] <= currentBests[cdm1]))
          ) {
            moveIndexPerDepth[cdm1] = movesPerDepth[cdm1].length;
            currentBests[currentDepth] = -32768;
            currentDepth = cdm1;
            continue mainloop;
          }
        }
      }

      if (boardsPerDepth[cdm1][0][64] === 1) {
        if (scorePerDepth[cdm1] > scorePerDepth[currentDepth] /* + validMoveCounts[currentDepth] */) {
          scorePerDepth[cdm1] = scorePerDepth[currentDepth] /* + validMoveCounts[currentDepth] */;
          moveTreePerDepth[cdm1] = moveTreePerDepth[currentDepth];

          if (
            currentBests[cdm1] === -32768 ||
            currentBests[cdm1] > currentBests[currentDepth] /* + validMoveCounts[currentDepth] */
          ) {
            currentBests[cdm1] = scorePerDepth[cdm1];

            if (currentBests[currentDepth - 2] !== -32768 && currentBests[currentDepth - 2] >= currentBests[cdm1]) {
              moveIndexPerDepth[cdm1] = movesPerDepth[cdm1].length;
              currentBests[currentDepth] = -32768;
              currentDepth = cdm1;
              continue mainloop;
            }
          }
        }
      }

      if (boardsPerDepth[cdm1][0][64] === 0) {
        if (scorePerDepth[cdm1] < scorePerDepth[currentDepth] /* - validMoveCounts[currentDepth] */) {
          scorePerDepth[cdm1] = scorePerDepth[currentDepth] /* - validMoveCounts[currentDepth] */;
          moveTreePerDepth[cdm1] = moveTreePerDepth[currentDepth];

          if (
            currentBests[cdm1] === -32768 ||
            currentBests[cdm1] < currentBests[currentDepth] /* - validMoveCounts[currentDepth] */
          ) {
            currentBests[cdm1] = scorePerDepth[cdm1];

            if (currentBests[currentDepth - 2] !== -32768 && currentBests[currentDepth - 2] <= currentBests[cdm1]) {
              moveIndexPerDepth[cdm1] = movesPerDepth[cdm1].length;
              currentBests[currentDepth] = -32768;
              currentDepth = cdm1;
              continue mainloop;
            }
          }
        }
      }

      moveIndexPerDepth[cdm1] += 1;
      currentBests[currentDepth] = -32768;
      currentDepth = cdm1;
      continue mainloop;
    }

    if (currentDepth < depth) {
      // go deeper
      const cdp1 = currentDepth + 1;
      const boardToProcess = boardsPerDepth[currentDepth][moveIndexPerDepth[currentDepth]];

      try {
        if (cdp1 === depth) {
          const posVal = [0];
          movesPerDepth[cdp1] = generatePseudoMovesUpdatePositionScore(boardToProcess, posVal);
          posVals[moveIndexPerDepth[currentDepth]] = posVal[0];
        } else {
          movesPerDepth[cdp1] = generatePseudoMovesThrowMethod(boardToProcess);
          posVals.length = 0;
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

        if (
          currentDepth > 0 &&
          moveIndexPerDepth[currentDepth] === movesPerDepth[currentDepth].length &&
          scorePerDepth[currentDepth] === -32768
        ) {
          const stalledBoard = boardsPerDepth[currentDepth - 1][moveIndexPerDepth[currentDepth - 1]];

          if (isCaptured(stalledBoard, stalledBoard.indexOf(6 + (stalledBoard[64] << 3)), stalledBoard[64])) {
            // checkmate

            scorePerDepth[currentDepth] = stalledBoard[64] ? currentDepth - 31000 : 31000 - currentDepth;
          } else {
            //draw
          }
        }

        continue mainloop;
      }

      moveIndexPerDepth[cdp1] = 0;
      scorePerDepth[cdp1] = -32768;
      boardsPerDepth[cdp1] = movesPerDepth[cdp1].map((nextDepthMove) => getMovedBoard(nextDepthMove, boardToProcess));

      currentDepth = cdp1;
      continue mainloop;
    }

    if (currentDepth === depth) {
      // desiredDepth reached, evaluate board
      try {
        const score =
          evaluateBoard(boardsPerDepth[currentDepth][moveIndexPerDepth[currentDepth]]) +
          posVals[moveIndexPerDepth[currentDepth - 1]];

        if (
          // no score for this level (1st board) or score is better than what we already have
          scorePerDepth[currentDepth] === -32768 ||
          (boardsPerDepth[currentDepth][0][64] === 1 && scorePerDepth[currentDepth] > score) ||
          (boardsPerDepth[currentDepth][0][64] === 0 && scorePerDepth[currentDepth] < score)
        ) {
          const cdm1 = currentDepth - 1;

          // set this score for this depth (desiredDepth)
          scorePerDepth[currentDepth] = score;
          moveTreePerDepth[currentDepth] = Array.from(moveIndexPerDepth).map((mi, d) => movesPerDepth[d][mi]);

          if (
            // we have currentBest for depth - 1 and that's better than what we got here
            currentBests[cdm1] !== -32768 &&
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

        if (
          moveIndexPerDepth[currentDepth] === movesPerDepth[currentDepth].length &&
          scorePerDepth[currentDepth] === -32768
        ) {
          const stalledBoard = boardsPerDepth[currentDepth - 1][moveIndexPerDepth[currentDepth - 1]];

          if (isCaptured(stalledBoard, stalledBoard.indexOf(6 + (stalledBoard[64] << 3)), stalledBoard[64])) {
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

  let loopScore = 0;
  if (repeatedPastFens.includes(board2fen(movedBoard))) {
    // move would loop
    loopScore = -2000;

    if (!dontLoop) loopScore *= -1;
    if (movedBoard[64] === 0) loopScore *= -1;
  }

  return { score: scorePerDepth[0] + loopScore, currentBests, moveTree: moveTreePerDepth[0] };
};

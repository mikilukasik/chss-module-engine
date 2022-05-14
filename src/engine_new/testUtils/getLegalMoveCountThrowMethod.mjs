import { generatePseudoMovesThrowMethod } from '../moveGenerators/generatePseudoMovesThrowMethod.js';
import { getMovedBoard } from '../utils/getMovedBoard.js';
import { isCaptured } from '../utils/isCaptured.js';

export const getLegalMoveCountThrowMethod = (board, depth) => {
  const depthMinusOne = depth - 1;
  const movesPerDepth = [];
  const moveIndexPerDepth = new Int8Array(depth);
  const boardsPerDepth = [[board], ...Array.from({ length: depthMinusOne }).map(() => [])];

  let moveCount = 0;
  let currentDepth = 0;

  mainLoop: while (true) {
    const moveIndex = moveIndexPerDepth[currentDepth];

    if (moveIndex === boardsPerDepth[currentDepth].length) {
      // all boards used on this depth, go depth - 1
      currentDepth -= 1;
      if (currentDepth < 0) break mainLoop;

      moveIndexPerDepth[currentDepth] += 1;
      continue mainLoop;
    }

    try {
      movesPerDepth[currentDepth] = generatePseudoMovesThrowMethod(boardsPerDepth[currentDepth][moveIndex]);
    } catch (e) {
      if (e) throw e;
      // board was illegal, king can be hit
      moveIndexPerDepth[currentDepth] += 1;
      continue mainLoop;
    }

    if (currentDepth === depthMinusOne) {
      // reached desired depth, count moves and go depth -1
      let invalidMoveCount = 0;
      for (const move of movesPerDepth[currentDepth]) {
        const movedBoard = getMovedBoard(move, boardsPerDepth[currentDepth][moveIndex]);
        if (isCaptured(movedBoard, movedBoard.indexOf(6 + ((movedBoard[64] ^ 1) << 3)), movedBoard[64] ^ 1))
          invalidMoveCount += 1;
      }

      moveCount += movesPerDepth[currentDepth].length - invalidMoveCount;
      moveIndexPerDepth[currentDepth] += 1;
      continue mainLoop;
    }

    const currentDepthPlusOne = currentDepth + 1;
    boardsPerDepth[currentDepthPlusOne] = [];
    moveIndexPerDepth[currentDepthPlusOne] = 0;

    movesPerDepth[currentDepth].forEach(
      (move) =>
        (boardsPerDepth[currentDepthPlusOne][boardsPerDepth[currentDepthPlusOne].length] = getMovedBoard(
          move,
          boardsPerDepth[currentDepth][moveIndex],
        )),
    );

    currentDepth = currentDepthPlusOne;
  }

  return moveCount;
};

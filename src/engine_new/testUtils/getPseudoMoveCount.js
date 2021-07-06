// this probably doesn't work

import { generatePseudoMoves } from "../moveGenerators/generatePseudoMoves";
import { getMovedBoard } from "../utils/getMovedBoard";

export const getLegalMoveCount = (board, depth) => {
  const depthMinusOne = depth - 1;
  
  let moveCount = 0;

  const movesPerDepth = [];
  const moveIndexPerDepth = new Int8Array(depth);
  const boardsPerDepth = [[board], ...Array.from({ length: depthMinusOne }).map(() => ([]))];


  let currentDepth = 0;
  do {
    const moveIndex = moveIndexPerDepth[currentDepth];

    if (moveIndex === boardsPerDepth[currentDepth].length) {
      // all boards used on this depth, go depth - 1
      currentDepth -= 1;
      if (currentDepth < 0) break;

      moveIndexPerDepth[currentDepth] += 1;
      continue;
    }

    movesPerDepth[currentDepth] = generatePseudoMoves(boardsPerDepth[currentDepth][moveIndex]);
    
    if (currentDepth === depthMinusOne) {
      // reached desired depth, count moves and go depth -1
      moveCount += movesPerDepth[currentDepth].length;

      movesPerDepth[currentDepth].forEach(move => {
        const targetCell = move & 63;
      });


      moveIndexPerDepth[currentDepth] += 1;
      continue;
    }

    const currentDepthPlusOne = currentDepth + 1;
    boardsPerDepth[currentDepthPlusOne] = [];
    moveIndexPerDepth[currentDepthPlusOne] = 0;

    movesPerDepth[currentDepth].forEach(move => 
      boardsPerDepth[currentDepthPlusOne][boardsPerDepth[currentDepthPlusOne].length] = getMovedBoard(move, boardsPerDepth[currentDepth][moveIndex])
    );

    currentDepth = currentDepthPlusOne;
  } while (true);

  return moveCount;
};

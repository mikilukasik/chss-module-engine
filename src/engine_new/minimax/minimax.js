import { getPrediction } from '../tfModels/getPrediction.js';
import { evaluateBoard } from '../evaluators/evaluateBoard_new.js';
import { generatePseudoMovesThrowMethod } from '../moveGenerators/generatePseudoMovesThrowMethod.js';
import { getWasmEngine } from '../utils/wasmEngine.js';
// import { getMovedBoard } from '../utils/getMovedBoard.js';
// import { a } from '../utils/wasmEngine2.js';

const MODEL_NAME = 'champion';

// console.log(instantiate.toString());

// setInterval(() => {
//   console.log(instantiateSync());
// }, 1000);

export const minimax = async (board, depth, alpha, beta, valueToAdd, topLevel = true) => {
  const { getMovedBoard } = await getWasmEngine();

  // console.log('add', add(1, 4));

  if (depth === 0) return evaluateBoard(board) + valueToAdd;

  if (topLevel) valueToAdd += (await getPrediction({ board, modelName: MODEL_NAME })) * 5;

  const moves = generatePseudoMovesThrowMethod(board); //.map((move) => getMovedBoard(move, board));

  if (board[64]) {
    let value = -99999 - depth;
    for (const move of moves) {
      const movedBoard = getMovedBoard(move, board);
      try {
        value = Math.max(value, await minimax(movedBoard, depth - 1, alpha, beta, valueToAdd, false));
        if (value >= beta) break;
        alpha = Math.max(alpha, value);
      } catch (e) {
        if (e) throw e;
      }
    }

    return value;
  }

  let value = 99999 + depth;
  for (const move of moves) {
    const movedBoard = getMovedBoard(move, board);
    try {
      value = Math.min(value, await minimax(movedBoard, depth - 1, alpha, beta, valueToAdd, false));
      if (value <= alpha) break;
      beta = Math.min(beta, value);
    } catch (e) {
      if (e) throw e;
    }
  }

  return value;
};

import { getPrediction } from '../tfModels/getPrediction.js';
import { evaluateBoard } from '../evaluators/evaluateBoard_new.js';
import { generatePseudoMovesThrowMethod } from '../moveGenerators/generatePseudoMovesThrowMethod.js';
import { getMovedBoard } from '../utils/getMovedBoard.js';

const MODEL_NAME = 'champion';

export const minimax = async (board, depth, alpha, beta, valueToAdd, topLevel = true) => {
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

import { evaluateBoard } from '../evaluators/evaluateBoard_new.js';
import { generatePseudoMovesThrowMethod } from '../moveGenerators/generatePseudoMovesThrowMethod.js';
import { getUpdatedLmfLmt } from '../utils/getUpdatedLmfLmt.js';
import { getWasmEngine } from '../utils/wasmEngine.js';
import { getMovedBoard } from '../utils/getMovedBoard.js';
import { isCaptured } from '../utils/isCaptured.js';
import { getPrediction } from '../tfModels/modelLoader.js';

const getMoveEvaluator = async ({ board, lmf, lmt, predict }) => {
  const response = await predict({ game: { board, lmf, lmt, wNext: board[64] } });

  const moveEvaluator = (move) => response.moveValues[move]; // * 1.4 + prediction[targetIndex + 64];
  return moveEvaluator;
};

export const minimax = async (
  board,
  depth,
  alpha,
  beta,
  valueToAdd = 0,
  deepMoveSorters = [],
  lmf,
  lmt,
  wantsToDraw,
) => {
  if (deepMoveSorters.length === 0) {
    const [error, val] = await (await getWasmEngine()).minimax(board, depth, alpha, beta, valueToAdd);
    if (error) throw false;
    return val;
  }

  if (depth === 0) return evaluateBoard(board) + valueToAdd;

  const moves = generatePseudoMovesThrowMethod(board);

  const moveEvaluator = await getMoveEvaluator({
    board,
    lmf,
    lmt,
    predict: (arg) => getPrediction({ ...arg, ...deepMoveSorters[0] }),
  });
  const moveAiValues = moves.map(moveEvaluator);

  const sortedMoves = new Array(moves.length)
    .fill(0)
    .map((e, i) => i)
    .filter((i) => moveAiValues[i] >= moveAiValues[0] * (deepMoveSorters[0].cutoff || 0))
    .sort((a, b) => moveAiValues[b] - moveAiValues[a])
    .map((i) => moves[i]);

  if (board[64]) {
    let value = -99999 - depth;
    for (const move of sortedMoves) {
      const movedBoard = getMovedBoard(move, board);
      try {
        const nextLm = getUpdatedLmfLmt({ move, lmf, lmt });
        value = Math.max(
          value,
          await minimax(
            movedBoard,
            depth - 1,
            alpha,
            beta,
            valueToAdd,
            deepMoveSorters.slice(1),
            nextLm.lmf,
            nextLm.lmt,
            wantsToDraw,
          ),
        );
        if (value >= beta) break;
        alpha = Math.max(alpha, value);
      } catch (e) {
        if (e) throw e;
      }
    }

    if (
      !wantsToDraw &&
      value === -99999 - depth &&
      !isCaptured(board, board.indexOf(6 + (board[64] << 3)), board[64])
    ) {
      return 99999;
    }

    return value;
  }

  let value = 99999 + depth;
  for (const move of sortedMoves) {
    const movedBoard = getMovedBoard(move, board);
    try {
      const nextLm = getUpdatedLmfLmt({ move, lmf, lmt });

      value = Math.min(
        value,
        await minimax(
          movedBoard,
          depth - 1,
          alpha,
          beta,
          valueToAdd,
          deepMoveSorters.slice(1),
          nextLm.lmf,
          nextLm.lmt,
          wantsToDraw,
        ),
      );
      if (value <= alpha) break;
      beta = Math.min(beta, value);
    } catch (e) {
      if (e) throw e;
    }
  }

  if (!wantsToDraw && value === 99999 + depth && !isCaptured(board, board.indexOf(6 + (board[64] << 3)), board[64])) {
    return -99999;
  }

  return value;
};

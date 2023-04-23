import { evaluateBoard } from "../evaluators/evaluateBoard_new.js";
import { generatePseudoMovesThrowMethod } from "../moveGenerators/generatePseudoMovesThrowMethod.js";
import { getUpdatedLmfLmt } from "../utils/getUpdatedLmfLmt.js";
import { getMovedBoard } from "../utils/getMovedBoard.js";
import { isCaptured } from "../utils/isCaptured.js";

export const minimax = async (
  board,
  depth,
  alpha,
  beta,
  valueToAdd = 0,
  lmf,
  lmt,
  wantsToDraw
) => {
  if (depth === 0) return evaluateBoard(board) + valueToAdd;

  let moves = generatePseudoMovesThrowMethod(board);

  if (board[64]) {
    let value = -99999 - depth;
    for (const move of moves) {
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
            nextLm.lmf,
            nextLm.lmt,
            wantsToDraw
          )
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
  for (const move of moves) {
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
          nextLm.lmf,
          nextLm.lmt,
          wantsToDraw
        )
      );
      if (value <= alpha) break;
      beta = Math.min(beta, value);
    } catch (e) {
      if (e) throw e;
    }
  }

  if (
    !wantsToDraw &&
    value === 99999 + depth &&
    !isCaptured(board, board.indexOf(6 + (board[64] << 3)), board[64])
  ) {
    return -99999;
  }

  return value;
};

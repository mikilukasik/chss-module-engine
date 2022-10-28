import { evaluateBoard, generatePseudoMoves, getMovedBoard } from '.';

export function minimax(
  board: Uint8Array,
  depth: u8,
  alpha: f32 = -99999,
  beta: f32 = 99999,
  valueToAdd: f32 = 0,
): f32[] {
  if (depth === 0) return evaluateBoard(board, valueToAdd);

  const moves = generatePseudoMoves(board);

  if (moves) {
    if (board[64]) {
      let value: f32 = -99999 - depth;

      // // move tracking
      // let winningMoves: f32[] = [];

      for (let i = 0, len = moves.length; i < len; i += 1) {
        // if (moves[i] === 31807) console.log('a');

        const movedBoard = getMovedBoard(moves[i], board);
        const minimaxResult = minimax(movedBoard, depth - 1, alpha, beta, valueToAdd);
        if (minimaxResult[0] === 0) {
          value = f32(Math.max(value, minimaxResult[1]));

          // // move tracking
          // winningMoves = [f32(moves[i])].concat(minimaxResult.slice(2));

          if (value >= beta) break;
          alpha = f32(Math.max(alpha, value));
        }
      }

      return [0, value]; //.concat(/* move tracking */ winningMoves);
    }

    let value: f32 = 99999 + depth;

    // // move tracking
    // let winningMoves: f32[] = [];

    for (let i = 0, len = moves.length; i < len; i += 1) {
      // if (moves[i] === 31807) console.log('b');

      const movedBoard = getMovedBoard(moves[i], board);
      const minimaxResult = minimax(movedBoard, depth - 1, alpha, beta, valueToAdd);
      if (minimaxResult[0] === 0) {
        value = f32(Math.min(value, minimaxResult[1]));

        // // move tracking
        // winningMoves = [f32(moves[i])].concat(minimaxResult.slice(2));

        if (value <= alpha) break;
        beta = f32(Math.min(beta, value));
      }
    }

    return [0, value]; //.concat(/* move tracking */ winningMoves);
  }

  // moves came back as null, this is an illegal board
  return [1, 0];
}

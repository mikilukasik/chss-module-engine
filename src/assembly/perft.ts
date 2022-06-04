import { generateLegalMoves, getMovedBoard } from '.';

export function perft(depth: i8, board: Uint8Array): u32 {
  const moves = generateLegalMoves(board);

  if (moves) {
    if (depth === 1) return moves.length;

    let childMoves: u32 = 0;
    for (let i: i32 = 0, len = moves.length; i < len; i += 1) {
      childMoves += perft(depth - 1, getMovedBoard(moves[i], board));
    }

    return childMoves;
  }

  abort(`Somthing's wrong, illegal board while using generateLegalMoves`);
  return 0;
}

// TODO: this is a very slow but working method. there are much faster ways of doing this
import { getMovedBoard, isCaptured, generatePseudoMoves } from '.';

export function generateLegalMoves(board: Uint8Array): u16[] {
  const legalMoves: u16[] = [];
  const pseudoMoves = generatePseudoMoves(board);

  for (let i = 0, len = pseudoMoves.length; i < len; i += 1) {
    const movedBoard = getMovedBoard(pseudoMoves[i], board);
    if (!isCaptured(movedBoard, i8(movedBoard.indexOf(6 + (board[64] << 3))), board[64]))
      legalMoves.push(pseudoMoves[i]);
  }

  return legalMoves;
}

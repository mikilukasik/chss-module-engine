import {
  getBishopHitMoves,
  getKingHitMoves,
  getKnightHitMoves,
  getPawnHitMovesNoPromotion,
  getQueenHitMoves,
  getRookHitMoves,
} from '.';

type ArrOfFuncs = Array<(position: i8, board: Uint8Array, color: u8) => u8[]>;

const moveGenerators: ArrOfFuncs = [
  (position: i8, board: Uint8Array, color: u8): u8[] => [],
  getPawnHitMovesNoPromotion,
  getBishopHitMoves,
  getKnightHitMoves,
  getRookHitMoves,
  getQueenHitMoves,
  getKingHitMoves,
];

export function getHitMovesNoPromotion(board: Uint8Array, cellIndex: u8): u8[] {
  const moveGenerator = moveGenerators[board[cellIndex] & 7];
  return moveGenerator(cellIndex, board, board[64]);
}

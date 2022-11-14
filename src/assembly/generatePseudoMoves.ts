import { getBishopMoves, getKingMoves, getKnightMoves, getPawnMoves, getQueenMoves, getRookMoves } from '.';

type ArrOfFuncs = Array<(position: i8, board: Uint8Array, color: u8) => u16[]>;

const moveGenerators: ArrOfFuncs = [
  (position: i8, board: Uint8Array, color: u8): u16[] => [],
  getPawnMoves,
  getBishopMoves,
  getKnightMoves,
  getRookMoves,
  getQueenMoves,
  getKingMoves,
];

export function generatePseudoMoves(board: Uint8Array): u16[] | null {
  const nonHitMoves: u16[] = [];
  const hitMoves: u16[] = [];
  const kingCell = board.indexOf(6 + ((board[64] ^ 1) << 3));

  for (let cellIndex: u8 = 0; cellIndex < 64; cellIndex += 1) {
    if (board[cellIndex] === 0 || board[cellIndex] >>> 3 !== board[64]) continue; // empty cell or not the color to move
    const moveGenerator = moveGenerators[board[cellIndex] & 7];
    const targetIndexes = moveGenerator(cellIndex, board, board[64]);
    if (!targetIndexes.length) continue;
    const sourcePart = u16(cellIndex) << 10;
    for (let i = 0, len = targetIndexes.length; i < len; i += 1) {
      const tIndex = targetIndexes[i] & 63;

      if (board[tIndex] > 0) {
        if (tIndex === kingCell) return null; //move a8a8: represents illegal board, as king can be hit on this one
        // abort(`${board[cellIndex]} ${board[targetIndexes[i]]} ${cellIndex} ${targetIndexes[i]} ${kingCell} ${board}`);
        hitMoves[hitMoves.length] = sourcePart + targetIndexes[i];
        continue;
      }
      nonHitMoves[nonHitMoves.length] = sourcePart + targetIndexes[i];
    }
  }

  if (hitMoves.length === 0) return nonHitMoves;
  return hitMoves.concat(nonHitMoves);
}

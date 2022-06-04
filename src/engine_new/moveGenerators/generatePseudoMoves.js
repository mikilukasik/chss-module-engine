import { getBishopMoves } from './getBishopMoves.js';
import { getKingMoves } from './getKingMoves.js';
import { getKnightMoves } from './getKnightMoves.js';
import { getPawnMoves } from './getPawnMoves.js';
import { getQueenMoves } from './getQueenMoves.js';
import { getRookMoves } from './getRookMoves.js';

const moveGenerators = [null, getPawnMoves, getBishopMoves, getKnightMoves, getRookMoves, getQueenMoves, getKingMoves];

export const generatePseudoMoves = (board) => {
  const nonHitMoves = [];
  const hitMoves = [];
  const color = board[64];

  for (let cellIndex = 63; cellIndex >= 0; cellIndex -= 1) {
    if (board[cellIndex] === 0 || board[cellIndex] >>> 3 !== color) continue; // empty cell or not the color to move

    const targetIndexes = moveGenerators[board[cellIndex] & 7](cellIndex, board, color);
    if (!targetIndexes.length) continue;

    const sourcePart = cellIndex << 10;
    for (const targetIndex of targetIndexes) {
      if (board[targetIndex & 63] > 0) {
        hitMoves[hitMoves.length] = sourcePart + targetIndex;
        continue;
      }

      nonHitMoves[nonHitMoves.length] = sourcePart + targetIndex;
    }
  }

  if (hitMoves.length === 0) return nonHitMoves;
  return [...hitMoves, ...nonHitMoves];
};

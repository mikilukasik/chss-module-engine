import { getBishopHitMoves } from './getBishopHitMoves.js';
import { getKingHitMoves } from './getKingHitMoves.js';
import { getKnightHitMoves } from './getKnightHitMoves.js';
import { getPawnHitMovesNoPromotion } from './getPawnHitMovesNoPromotion.js';
import { getQueenHitMoves } from './getQueenHitMoves.js';
import { getRookHitMoves } from './getRookHitMoves.js';

const moveGenerators = [
  null,
  getPawnHitMovesNoPromotion,
  getBishopHitMoves,
  getKnightHitMoves,
  getRookHitMoves,
  getQueenHitMoves,
  getKingHitMoves,
];

export const getHitMovesNoPromotion = (board, cellIndex) => {
  return moveGenerators[board[cellIndex] & 7](cellIndex, board, board[64]);
};

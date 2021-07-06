import { getBishopHitMoves } from "./getBishopHitMoves";
import { getKingHitMoves } from "./getKingHitMoves";
import { getKnightHitMoves } from "./getKnightHitMoves";
import { getPawnHitMoves } from "./getPawnHitMoves";
import { getQueenHitMoves } from "./getQueenHitMoves";
import { getRookHitMoves } from "./getRookHitMoves";

const moveGenerators = [
  null,
  getPawnHitMoves,
  getBishopHitMoves,
  getKnightHitMoves,
  getRookHitMoves,
  getQueenHitMoves,
  getKingHitMoves,
];

export const getHitMoves = (board, cellIndex) => {
  return moveGenerators[board[cellIndex] & 7](cellIndex, board, board[64]);
};

import { getPromotionPieceFromMove } from "./getPromotionPieceFromMove.js";

export const move2moveIndexes = (move) => [
  move >>> 10,
  move & 63,
  getPromotionPieceFromMove(move),
];

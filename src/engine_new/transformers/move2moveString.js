import { cellIndex2cellStr } from './cellIndex2cellStr.js';

const promotionPieces = ['', null, 'b', 'n', 'r', 'q'];

const getPromotionPiece = (move) => {
  const newPiece = (move >>> 6) & 7;
  return promotionPieces[newPiece];
};

export const move2moveString = (move) =>
  `${cellIndex2cellStr(move >>> 10)}${cellIndex2cellStr(move & 63)}${getPromotionPiece(move)}`;

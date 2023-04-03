const promotionPieces = ["", null, "b", "n", "r", "q"];

export const getPromotionPieceFromMove = (move) => {
  const newPiece = (move >>> 6) & 7;
  return promotionPieces[newPiece];
};

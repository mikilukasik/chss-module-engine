const promotionPieces = [
  "",
  null,
  "b",
  "n",
  "r",
  "q",
  null,
  null,
  "",
  null,
  "B",
  "N",
  "R",
  "Q",
];

export const cellIndex2cellStr = (index) =>
  `${String.fromCharCode((index % 8) + 97)}${8 - Math.floor(index / 8)}`;

const getPromotionPiece = (move) => {
  const newPiece = (move >>> 6) & 7;
  return promotionPieces[newPiece];
};

export const move2moveString = (move) =>
  `${cellIndex2cellStr(move >>> 10)}${cellIndex2cellStr(
    move & 63
  )}${getPromotionPiece(move)}`;

export const cellStr2cellIndex = (cellStr) =>
  ((8 - Number(cellStr[1])) << 3) + (cellStr.charCodeAt(0) - 97);

export const moveString2move = (moveStr) =>
  ((8 - Number(moveStr[1])) << 13) +
  ((moveStr.charCodeAt(0) - 97) << 10) +
  ((8 - Number(moveStr[3])) << 3) +
  (moveStr.charCodeAt(2) - 97) +
  (moveStr[4] ? promotionPieces.indexOf(moveStr[4]) << 6 : 0);

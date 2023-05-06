export const pieceCharValues = {
  p: -1,
  b: -3,
  n: -3,
  r: -5,
  q: -9,
  P: 1,
  B: 3,
  N: 3,
  R: 5,
  Q: 9,
};

// 15 for king val, should not be used, won't get hit
export const pieceValues = [
  0, -1, -3, -3, -5, -9, -15, 0, 0, 1, 3, 3, 5, 9, 15,
];

export const positivePieceValues = pieceValues.map(Math.abs);

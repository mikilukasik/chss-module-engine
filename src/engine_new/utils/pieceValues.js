// alphazero's valuation https://arxiv.org/pdf/2009.04374.pdf
export const pieceCharValues = {
  p: -1,
  b: -3.33,
  n: -3.05,
  r: -5.63,
  q: -9.5,
  P: 1,
  B: 3.33,
  N: 3.05,
  R: 5.63,
  Q: 9.5,
};

// 15 for king val, should not be used, won't get hit
export const pieceValues = [0, -1, -3.33, -3.05, -5.63, -9.5, -15, 0, 0, 1, 3.33, 3.05, 5.63, 9.5, 15];

export const positivePieceValues = pieceValues.map(Math.abs);

import { pieceCharValues } from './pieceValues.js';

export const getPieceBalance = ({ fen }) =>
  Math.round(
    fen
      .split(' ')[0]
      .split('')
      .reduce((p, c) => p + (pieceCharValues[c] || 0), 0) * 100,
  ) / 100;

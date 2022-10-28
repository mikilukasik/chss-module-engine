import { pieceValues } from './pieceValues.js';

export const getBoardPieceBalance = (board) => {
  let pieceBalance = 0;
  for (let index = 0; index <= 63; index += 1) {
    pieceBalance += pieceValues[board[index]];
  }

  return pieceBalance;
};

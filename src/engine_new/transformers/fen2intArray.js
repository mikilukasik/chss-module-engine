import { cellStrToIndex } from "./cellStrToIndex";

const pieces = ['', 'p', 'b', 'n', 'r', 'q', 'k', '', '', 'P', 'B', 'N', 'R', 'Q', 'K'];
const castlingValues = ['-', 'q', 'k', '', 'Q', '', '', '', 'K'];

export const fen2intArray = (fen) => {
  const [boardStr, next, castling, enpassantTarget] = fen.split(' ');
  
  const buffer = new ArrayBuffer(67);     // 64 cells + wNext + castling + enPassantTarget
  const board = new Int8Array(buffer);
  
  let nextByteIndex = 0;
  for (const char of boardStr.split('')) {
    if (char === '/') continue;
    let charAsNumber = Number(char);
    if (charAsNumber) {
      nextByteIndex += charAsNumber;
      continue;
    }

    board[nextByteIndex ++] = pieces.indexOf(char);
  }

  if (next === 'w') board[64] = 1;

  castling.split('').forEach(char => {
    board[65] += castlingValues.indexOf(char);
  });

  if (enpassantTarget === '-') return board;

  board[66] = cellStrToIndex(enpassantTarget);
  return board;
};

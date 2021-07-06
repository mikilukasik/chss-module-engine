import { cellIndex2cellStr } from "./cellIndex2cellStr";

const pieces = ['', 'p', 'b', 'n', 'r', 'q', 'k', '', '', 'P', 'B', 'N', 'R', 'Q', 'K'];
const castlingStrings = ['-', 'q', 'k', 'kq', 'Q', 'Qq', 'Qk', 'Qkq', 'K', 'Kq', 'Kk', 'Kkq', 'KQ', 'KQq', 'KQk', 'KQkq']

export const board2fen = (board) => {
  let fen = '';

  let blankCellCount = 0;
  board.slice(0, 64).forEach((cell, index) => {
    if (index > 0 && index % 8 === 0) {
      if (blankCellCount) fen = `${fen}${blankCellCount}`;
      fen = `${fen}/`;
      blankCellCount = 0;
    }

    if (cell === 0) {
      blankCellCount += 1;
      return;
    }
    
    if (blankCellCount) {
      fen = `${fen}${blankCellCount}`;
      blankCellCount = 0;
    }

    fen = `${fen}${pieces[cell]}`;
  });
  if (blankCellCount) fen = `${fen}${blankCellCount}`;

  fen = `${fen} ${board[64] ? 'w' : 'b'}`;
  fen = `${fen} ${castlingStrings[board[65]]}`;
  fen = `${fen} ${board[66] ? cellIndex2cellStr(board[66]) : '-'}`;

  return `${fen} 0 1`;
};

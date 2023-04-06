import { isCaptured } from "./isCaptured.js";

export const isCheck = (board) =>
  isCaptured(board, board.indexOf(6 + (board[64] << 3)), board[64]);

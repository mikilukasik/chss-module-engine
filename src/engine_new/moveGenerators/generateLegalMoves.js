// TODO: this is a very slow but working method. there are much faster ways of doing this

import { getMovedBoard } from "../utils/getMovedBoard";
import { isCaptured } from "../utils/isCaptured";
import { generatePseudoMoves } from "./generatePseudoMoves"

export const generateLegalMoves = (board) => {
  const pseudoMoves = generatePseudoMoves(board);
  const legalMoves = pseudoMoves.filter((move) => {
    const movedBoard = getMovedBoard(move, board);
    return !isCaptured(movedBoard, movedBoard.indexOf(6 + (board[64] << 3)), board[64])
  });

  return new Uint16Array(legalMoves);
};

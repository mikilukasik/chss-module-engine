import { getKnightMoves } from '../moveGenerators/getKnightMoves.js';

export const isCaptured = (board, cellIndex, color) => {
  const rank = cellIndex >>> 3;
  const file = cellIndex & 7;

  // check if attacked by pawn
  if (color === 0) {
    if (rank < 6) {
      if (file > 0 && board[cellIndex + 7] === 9) return true;
      if (file < 7 && board[cellIndex + 9] === 9) return true;
    }
  } else {
    if (rank > 1) {
      if (file < 7 && board[cellIndex - 7] === 1) return true;
      if (file > 0 && board[cellIndex - 9] === 1) return true;
    }
  }

  // check if captured by knight
  const lookForKnightOn = getKnightMoves(cellIndex, board, color);
  for (const cellToCheckKnightFor of lookForKnightOn) if ((board[cellToCheckKnightFor] & 7) === 3) return true;

  // check for bishop, rook, or king
  // rank is used instead of maxMovesUp
  const maxMovesLeft = cellIndex & 7; // equals to file
  const maxMovesDown = 7 - rank;
  const maxMovesRight = 7 - maxMovesLeft;

  const attackingColorPrefix = (color ^ 1) << 3;
  const attackingBishop = attackingColorPrefix + 2;
  const attackingRook = attackingColorPrefix + 4;
  const attackingQueen = attackingColorPrefix + 5;
  const attackingKing = attackingColorPrefix + 6;

  const lastCellUpLeft = cellIndex - Math.min(rank, maxMovesLeft) * 9;
  for (let currentCellIndex = cellIndex - 9; currentCellIndex >= lastCellUpLeft; currentCellIndex -= 9) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingBishop) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex - 9) return true;
    break;
  }

  const lastCellUpRight = cellIndex - Math.min(rank, maxMovesRight) * 7;
  for (let currentCellIndex = cellIndex - 7; currentCellIndex >= lastCellUpRight; currentCellIndex -= 7) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingBishop) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex - 7) return true;
    break;
  }

  const lastCellDownLeft = cellIndex + Math.min(maxMovesDown, maxMovesLeft) * 7;
  for (let currentCellIndex = cellIndex + 7; currentCellIndex <= lastCellDownLeft; currentCellIndex += 7) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingBishop) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex + 7) return true;
    break;
  }

  const lastCellDownRight = cellIndex + Math.min(maxMovesDown, maxMovesRight) * 9;
  for (let currentCellIndex = cellIndex + 9; currentCellIndex <= lastCellDownRight; currentCellIndex += 9) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingBishop) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex + 9) return true;
    break;
  }

  const lastCellUp = cellIndex - rank * 8;
  for (let currentCellIndex = cellIndex - 8; currentCellIndex >= lastCellUp; currentCellIndex -= 8) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingRook) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex - 8) return true;
    break;
  }

  const lastCellRight = cellIndex + maxMovesRight;
  for (let currentCellIndex = cellIndex + 1; currentCellIndex <= lastCellRight; currentCellIndex += 1) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingRook) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex + 1) return true;
    break;
  }

  const lastCellDown = cellIndex + maxMovesDown * 8;
  for (let currentCellIndex = cellIndex + 8; currentCellIndex <= lastCellDown; currentCellIndex += 8) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingRook) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex + 8) return true;
    break;
  }

  const lastCellLeft = cellIndex - maxMovesLeft;
  for (let currentCellIndex = cellIndex - 1; currentCellIndex >= lastCellLeft; currentCellIndex -= 1) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === attackingRook) return true;
    if (board[currentCellIndex] === attackingQueen) return true;
    if (board[currentCellIndex] === attackingKing && currentCellIndex === cellIndex - 1) return true;
    break;
  }

  return false;
};

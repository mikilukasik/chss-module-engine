import { getKnightMoves } from "../moveGenerators/getKnightMoves";

export const getDefenderValues = (board, cellIndex, color) => {
  const defenderValues = [];
  const rank = cellIndex >>> 3;

  // check if attacked by pawn
  if (color === 0) {
    if (rank < 6) {
      if (board[cellIndex + 7] === 9) defenderValues[defenderValues.length] = 1;
      if (board[cellIndex + 9] === 9) defenderValues[defenderValues.length] = 1;
    }
  } else {
    if (rank > 1) {
      if (board[cellIndex - 7] === 1) defenderValues[defenderValues.length] = 1;
      if (board[cellIndex - 9] === 1) defenderValues[defenderValues.length] = 1;
    }
  }

  // check if captured by knight
  const lookForKnightOn = getKnightMoves(cellIndex, board, color);
  for (const cellToCheckKnightFor of lookForKnightOn) if ((board[cellToCheckKnightFor] & 7) === 3) defenderValues[defenderValues.length] = 3;

  // check for bishop, rook, or king
  // rank is used instead of maxMovesUp
  const maxMovesLeft = cellIndex & 7;  // equals to file
  const maxMovesDown = 7 - rank;
  const maxMovesRight = 7 - maxMovesLeft;

  const defendingColorPrefix = (color ^ 1) << 3;
  const defendingBishop = defendingColorPrefix + 2;
  const defendingRook = defendingColorPrefix + 4;
  const defendingQueen = defendingColorPrefix + 5;
  const defendingKing = defendingColorPrefix + 6;

  const lastCellUpLeft = cellIndex - Math.min(rank, maxMovesLeft) * 9;
  for (let currentCellIndex = cellIndex - 9; currentCellIndex >= lastCellUpLeft; currentCellIndex -= 9) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingBishop) defenderValues[defenderValues.length] = 3;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex - 9) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellUpRight = cellIndex - Math.min(rank, maxMovesRight) * 7;
  for (let currentCellIndex = cellIndex - 7; currentCellIndex >= lastCellUpRight; currentCellIndex -= 7) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingBishop) defenderValues[defenderValues.length] = 3;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex - 7) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellDownLeft = cellIndex + Math.min(maxMovesDown, maxMovesLeft) * 7;
  for (let currentCellIndex = cellIndex + 7; currentCellIndex <= lastCellDownLeft; currentCellIndex += 7) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingBishop) defenderValues[defenderValues.length] = 3;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex + 7) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellDownRight = cellIndex + Math.min(maxMovesDown, maxMovesRight) * 9;
  for (let currentCellIndex = cellIndex + 9; currentCellIndex <= lastCellDownRight; currentCellIndex += 9) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingBishop) defenderValues[defenderValues.length] = 3;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex + 9) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellUp = cellIndex - rank * 8;
  for (let currentCellIndex = cellIndex - 8; currentCellIndex >= lastCellUp; currentCellIndex -= 8) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingRook) defenderValues[defenderValues.length] = 5;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex - 8) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellRight = cellIndex + maxMovesRight;
  for (let currentCellIndex = cellIndex + 1; currentCellIndex <= lastCellRight; currentCellIndex += 1) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingRook) defenderValues[defenderValues.length] = 5;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex + 1) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellDown = cellIndex + maxMovesDown * 8;
  for (let currentCellIndex = cellIndex + 8; currentCellIndex <= lastCellDown; currentCellIndex += 8) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingRook) defenderValues[defenderValues.length] = 5;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex + 8) defenderValues[defenderValues.length] = 64;
    break;
  }

  const lastCellLeft = cellIndex - maxMovesLeft;
  for (let currentCellIndex = cellIndex - 1; currentCellIndex >= lastCellLeft; currentCellIndex -= 1) {
    if (board[currentCellIndex] === 0) continue; // empty cell
    if (board[currentCellIndex] === defendingRook) defenderValues[defenderValues.length] = 5;
    if (board[currentCellIndex] === defendingQueen) defenderValues[defenderValues.length] = 9;
    if (board[currentCellIndex] === defendingKing && currentCellIndex === cellIndex - 1) defenderValues[defenderValues.length] = 64;
    break;
  }

  return defenderValues;
};

export const getBishopMoveMap = (position, board, addToMoveMap) => {
  const piece = board[position];

  const maxMovesUp = position >>> 3; // equals to rank
  const maxMovesLeft = position & 7; // equals to file
  const maxMovesDown = 7 - maxMovesUp;
  const maxMovesRight = 7 - maxMovesLeft;

  const lastCellUpLeft = position - Math.min(maxMovesUp, maxMovesLeft) * 9;
  for (let cellIndex = position - 9; cellIndex >= lastCellUpLeft; cellIndex -= 9) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }

  const lastCellUpRight = position - Math.min(maxMovesUp, maxMovesRight) * 7;
  for (let cellIndex = position - 7; cellIndex >= lastCellUpRight; cellIndex -= 7) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }

  const lastCellDownLeft = position + Math.min(maxMovesDown, maxMovesLeft) * 7;
  for (let cellIndex = position + 7; cellIndex <= lastCellDownLeft; cellIndex += 7) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }

  const lastCellDownRight = position + Math.min(maxMovesDown, maxMovesRight) * 9;
  for (let cellIndex = position + 9; cellIndex <= lastCellDownRight; cellIndex += 9) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }
};

export const getRookMoveMap = (position, board, addToMoveMap) => {
  const piece = board[position];

  const maxMovesUp = position >>> 3; // equals to rank
  const maxMovesLeft = position & 7; // equals to file
  const maxMovesDown = 7 - maxMovesUp;
  const maxMovesRight = 7 - maxMovesLeft;

  const lastCellUp = position - maxMovesUp * 8;
  for (let cellIndex = position - 8; cellIndex >= lastCellUp; cellIndex -= 8) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }

  const lastCellRight = position + maxMovesRight;
  for (let cellIndex = position + 1; cellIndex <= lastCellRight; cellIndex += 1) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }

  const lastCellDown = position + maxMovesDown * 8;
  for (let cellIndex = position + 8; cellIndex <= lastCellDown; cellIndex += 8) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }

  const lastCellLeft = position - maxMovesLeft;
  for (let cellIndex = position - 1; cellIndex >= lastCellLeft; cellIndex -= 1) {
    addToMoveMap(cellIndex, 'to', piece);
    addToMoveMap(position, 'from', board[cellIndex]);

    if (board[cellIndex] === 0) continue;
    break;
  }
};

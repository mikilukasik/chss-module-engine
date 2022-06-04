export function getRookMoves(position: i8, board: Uint8Array, color: u8): u16[] {
  const targets: u16[] = [];

  const maxMovesUp = position >>> 3; // equals to rank
  const maxMovesLeft = position & 7; // equals to file
  const maxMovesDown: i8 = 7 - maxMovesUp;
  const maxMovesRight: i8 = 7 - maxMovesLeft;

  const lastCellUp: i8 = position - maxMovesUp * 8;

  for (let cellIndex = position - 8; cellIndex >= lastCellUp; cellIndex -= 8) {
    if (board[cellIndex] === 0) {
      // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  const lastCellRight = position + maxMovesRight;
  for (let cellIndex = position + 1; cellIndex <= lastCellRight; cellIndex += 1) {
    if (board[cellIndex] === 0) {
      // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  const lastCellDown = position + maxMovesDown * 8;
  for (let cellIndex = position + 8; cellIndex <= lastCellDown; cellIndex += 8) {
    if (board[cellIndex] === 0) {
      // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  const lastCellLeft = position - maxMovesLeft;
  for (let cellIndex = position - 1; cellIndex >= lastCellLeft; cellIndex -= 1) {
    if (board[cellIndex] === 0) {
      // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  return targets;
}

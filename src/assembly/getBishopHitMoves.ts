export function getBishopHitMoves(position: i8, board: Uint8Array, color: u8): u8[] {
  const targets: u8[] = [];

  const maxMovesUp = position >>> 3; // equals to rank
  const maxMovesLeft = position & 7; // equals to file
  const maxMovesDown = 7 - maxMovesUp;
  const maxMovesRight = 7 - maxMovesLeft;

  const lastCellUpLeft = position - Math.min(maxMovesUp, maxMovesLeft) * 9;
  for (let cellIndex = position - 9; cellIndex >= lastCellUpLeft; cellIndex -= 9) {
    if (board[cellIndex] === 0) {
      // empty cell
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  const lastCellUpRight = position - Math.min(maxMovesUp, maxMovesRight) * 7;
  for (let cellIndex = position - 7; cellIndex >= lastCellUpRight; cellIndex -= 7) {
    if (board[cellIndex] === 0) {
      // empty cell
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  const lastCellDownLeft = position + Math.min(maxMovesDown, maxMovesLeft) * 7;
  for (let cellIndex = position + 7; cellIndex <= lastCellDownLeft; cellIndex += 7) {
    if (board[cellIndex] === 0) {
      // empty cell
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  const lastCellDownRight = position + Math.min(maxMovesDown, maxMovesRight) * 9;
  for (let cellIndex = position + 9; cellIndex <= lastCellDownRight; cellIndex += 9) {
    if (board[cellIndex] === 0) {
      // empty cell
      continue;
    }

    if (board[cellIndex] >>> 3 !== color) targets[targets.length] = cellIndex; // opponent's piece
    break;
  }

  return targets;
}

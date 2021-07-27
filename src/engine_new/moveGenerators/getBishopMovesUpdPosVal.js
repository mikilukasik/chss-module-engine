const pieceAttackValues = new Int8Array([0, 1, 3, 3, 5, 9, 10, 0, 0, 1, 3, 3, 5, 9, 10].map(x => 3 * x));

export const getBishopMovesUpdPosVal = (position, board, color, posVal) => {
  const targets = [];

  const maxMovesUp = position >>> 3;   // equals to rank
  const maxMovesLeft = position & 7;  // equals to file
  const maxMovesDown = 7 - maxMovesUp;
  const maxMovesRight = 7 - maxMovesLeft;

  const lastCellUpLeft = position - Math.min(maxMovesUp, maxMovesLeft) * 9;
  for (let cellIndex = position - 9; cellIndex >= lastCellUpLeft; cellIndex -= 9) {
    if (board[cellIndex] === 0) { // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if ((board[cellIndex] >>> 3) === color) {
      // our piece, protectScore
      posVal[0] += 3;
      break;
    }
    // opponent's piece
    posVal[0] += pieceAttackValues[board[cellIndex]]
    targets[targets.length] = cellIndex; 
    break;
  }

  const lastCellUpRight = position - Math.min(maxMovesUp, maxMovesRight) * 7;
  for (let cellIndex = position - 7; cellIndex >= lastCellUpRight; cellIndex -= 7) {
    if (board[cellIndex] === 0) { // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if ((board[cellIndex] >>> 3) === color) {
      // our piece, protectScore
      posVal[0] += 3;
      break;
    }
    // opponent's piece
    posVal[0] += pieceAttackValues[board[cellIndex]]
    targets[targets.length] = cellIndex; 
    break;
  }

  const lastCellDownLeft = position + Math.min(maxMovesDown, maxMovesLeft) * 7;
  for (let cellIndex = position + 7; cellIndex <= lastCellDownLeft; cellIndex += 7) {
    if (board[cellIndex] === 0) { // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if ((board[cellIndex] >>> 3) === color) {
      // our piece, protectScore
      posVal[0] += 3;
      break;
    }
    // opponent's piece
    posVal[0] += pieceAttackValues[board[cellIndex]]
    targets[targets.length] = cellIndex; 
    break;
  }

  const lastCellDownRight = position + Math.min(maxMovesDown, maxMovesRight) * 9;
  for (let cellIndex = position + 9; cellIndex <= lastCellDownRight; cellIndex += 9) {
    if (board[cellIndex] === 0) { // empty cell
      targets[targets.length] = cellIndex;
      continue;
    }

    if ((board[cellIndex] >>> 3) === color) {
      // our piece, protectScore
      posVal[0] += 3;
      break;
    }
    // opponent's piece
    posVal[0] += pieceAttackValues[board[cellIndex]]
    targets[targets.length] = cellIndex; 
    break;
  }

  return targets;
};

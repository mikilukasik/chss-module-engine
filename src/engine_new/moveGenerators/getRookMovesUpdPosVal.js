const pieceAttackValues = new Int8Array([0, 1, 3, 3, 5, 9, 10, 0, 0, 1, 3, 3, 5, 9, 10].map(x => 3 * x));

export const getRookMovesUpdPosVal = (position, board, color, posVal) => {
  const targets = [];

  const maxMovesUp = position >>> 3;   // equals to rank
  const maxMovesLeft = position & 7;  // equals to file
  const maxMovesDown = 7 - maxMovesUp;
  const maxMovesRight = 7 - maxMovesLeft;

  const lastCellUp = position - maxMovesUp * 8;
  for (let cellIndex = position - 8; cellIndex >= lastCellUp; cellIndex -= 8) {
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

  const lastCellRight = position + maxMovesRight;
  for (let cellIndex = position + 1; cellIndex <= lastCellRight; cellIndex += 1) {
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

  const lastCellDown = position + maxMovesDown * 8;
  for (let cellIndex = position + 8; cellIndex <= lastCellDown; cellIndex += 8) {
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

  const lastCellLeft = position - maxMovesLeft;
  for (let cellIndex = position - 1; cellIndex >= lastCellLeft; cellIndex -= 1) {
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

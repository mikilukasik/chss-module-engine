const pieceAttackValues = new Int8Array([0, 1, 3, 3, 5, 9, 10, 0, 0, 1, 3, 3, 5, 9, 10].map(x => 3 * x));

export const getKnightMovesUpdPosVal = (position, board, color, posVal) => {
  const targets = [];

  const rank = position >>> 3;
  const file = position & 7;

  const canGo2Left = file > 1;
  const canGoLeft = canGo2Left || file > 0;
  const canGo2Right = file < 6;
  const canGoRight = canGo2Right || file < 7;
  const canGo2Up = rank > 1;
  const canGoUp = canGo2Up || rank > 0;
  const canGo2Down = rank < 6;
  const canGoDown = canGo2Down || rank < 7;
  
  if (canGo2Up) {
    if (canGoLeft) {
      const target = position - 17;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }

    if (canGoRight) {
      const target = position - 15;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }
  }

  if (canGo2Down) {
    if (canGoLeft) {
      const target = position + 15;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }

    if (canGoRight) {
      const target = position + 17;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }
  }
  
  if (canGo2Left) {
    if (canGoUp) {
      const target = position - 10;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }

    if (canGoDown) {
      const target = position + 6;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }
  }

  if (canGo2Right) {
    if (canGoUp) {
      const target = position - 6;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }

    if (canGoDown) {
      const target = position + 10;
      if (board[target] === 0) {
        targets[targets.length] = target;
      } else if ((board[target] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        targets[targets.length] = target;
        posVal[0] += pieceAttackValues[board[target]];
      }
    }
  }

  return targets;
};

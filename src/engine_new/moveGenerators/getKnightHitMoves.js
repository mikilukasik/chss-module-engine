export const getKnightHitMoves = (position, board, color) => {
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
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }

    if (canGoRight) {
      const target = position - 15;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }
  }

  if (canGo2Down) {
    if (canGoLeft) {
      const target = position + 15;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }

    if (canGoRight) {
      const target = position + 17;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }
  }
  
  if (canGo2Left) {
    if (canGoUp) {
      const target = position - 10;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }

    if (canGoDown) {
      const target = position + 6;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }
  }

  if (canGo2Right) {
    if (canGoUp) {
      const target = position - 6;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }

    if (canGoDown) {
      const target = position + 10;
      if (board[target] !== 0 && (board[target] >>> 3) !== color) targets[targets.length] = target;
    }
  }

  return targets;
};

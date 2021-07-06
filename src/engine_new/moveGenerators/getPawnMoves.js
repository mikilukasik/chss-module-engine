export const getPawnMoves = (position, board, isWhite) => {
  const targets = [];

  const rank = position >>> 3;
  const file = position & 7;
  const canHitRight = file < 7;
  const canHitLeft = file > 0;

  if (isWhite) {
    const straightTarget = position - 8;
    if (board[straightTarget] === 0) {
      targets[targets.length] = straightTarget;
      if (rank === 6) {
        const doubleMoveTarget = position - 16;
        if (board[doubleMoveTarget] === 0) targets[targets.length] = doubleMoveTarget;
      }
    }
    
    if (canHitRight) {
      const rightHitTarget = position - 7;
      if (board[rightHitTarget] === 0) {
        if (rank === 3 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
      } 
      else if ((board[rightHitTarget] >>> 3) === 0) targets[targets.length] = rightHitTarget; // target is black piece
    }

    if (canHitLeft) {
      const leftHitTarget = position - 9;
      if (board[leftHitTarget] === 0) { // target is empty
        if (rank === 3 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
      } 
      else if ((board[leftHitTarget] >>> 3) === 0) targets[targets.length] = leftHitTarget;
    }

    return targets;
  }

  // is black
  const straightTarget = position + 8;
  if (board[straightTarget] === 0) {
    targets[targets.length] = straightTarget;
    if (rank === 1) {
      const doubleMoveTarget = position + 16;
      if (board[doubleMoveTarget] === 0) targets[targets.length] = doubleMoveTarget;
    }
  }
  
  if (canHitRight) {
    const rightHitTarget = position + 9;
    if (board[rightHitTarget] === 0) { // target is empty
      if (rank === 4 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
    } 
    else if ((board[rightHitTarget] >>> 3) === 1) targets[targets.length] = rightHitTarget; // white target
  }

  if (canHitLeft) {
    const leftHitTarget = position + 7;
    if (board[leftHitTarget] === 0) {
      if (rank === 4 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
    }
    else if ((board[leftHitTarget] >>> 3) === 1) targets[targets.length] = leftHitTarget;
  }

  return targets;
};

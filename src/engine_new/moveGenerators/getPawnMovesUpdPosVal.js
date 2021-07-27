const pieceAttackValues = new Int8Array([0, 1, 3, 3, 5, 9, 10, 0, 0, 1, 3, 3, 5, 9, 10].map(x => 3 * x));

export const getPawnMovesUpdPosVal = (position, board, isWhite, posVal) => {
  const targets = [];

  const rank = position >>> 3;
  const file = position & 7;
  const canHitRight = file < 7;
  const canHitLeft = file > 0;

  // posVal[0] += rank * ((board[position] >>> 3) ? 64  : -64);

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
        if (rank === 3 && board[66] === rightHitTarget) {
          targets[targets.length] = rightHitTarget; // en passant
          posVal[0] += 3;
        }
      } 
      else if ((board[rightHitTarget] >>> 3) === 0) {
        targets[targets.length] = rightHitTarget; // target is black piece
        posVal[0] += pieceAttackValues[board[rightHitTarget]];
      } else {
        // our piece protected
        posVal[0] += 3;
      }
    }

    if (canHitLeft) {
      const leftHitTarget = position - 9;
      if (board[leftHitTarget] === 0) { // target is empty
        if (rank === 3 && board[66] === leftHitTarget) {
          targets[targets.length] = leftHitTarget; // en passant
          posVal[0] += 3;
        }
      } 
      else if ((board[leftHitTarget] >>> 3) === 0) {
        targets[targets.length] = leftHitTarget;
        posVal[0] += pieceAttackValues[board[leftHitTarget]];
      } else {
        // our piece protected
        posVal[0] += 3;
      }
    }

    return targets;
  }

  // is black
  // posVal[0] -= rank * 1000;

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
      if (rank === 4 && board[66] === rightHitTarget) {
        targets[targets.length] = rightHitTarget; // en passant
        posVal[0] += 3;
      }
    } 
    else if ((board[rightHitTarget] >>> 3) === 1) {
      targets[targets.length] = rightHitTarget; // white target
      posVal[0] += pieceAttackValues[board[rightHitTarget]];
    } else {
      // our piece protected
      posVal[0] += 3;
    }
  }

  if (canHitLeft) {
    const leftHitTarget = position + 7;
    if (board[leftHitTarget] === 0) {
      if (rank === 4 && board[66] === leftHitTarget) {
        targets[targets.length] = leftHitTarget; // en passant
        posVal[0] += 3;
      }
    }
    else if ((board[leftHitTarget] >>> 3) === 1) {
      targets[targets.length] = leftHitTarget;
      posVal[0] += pieceAttackValues[board[leftHitTarget]];
    } else {
      // our piece protected
      posVal[0] += 3;
    }
  }

  return targets;
};

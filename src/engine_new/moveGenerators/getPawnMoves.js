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

      if (rank === 1) {
        // promotion and underPromotion
        // target piece is queen by default, target added already above
        targets[targets.length] = straightTarget + (12 << 6); // can become rook
        targets[targets.length] = straightTarget + (11 << 6); // can become knight
        targets[targets.length] = straightTarget + (10 << 6); // can become bishop
      }

      if (rank === 6) {
        const doubleMoveTarget = position - 16;
        if (board[doubleMoveTarget] === 0) targets[targets.length] = doubleMoveTarget;
      }
    }

    if (canHitRight) {
      const rightHitTarget = position - 7;
      if (board[rightHitTarget] === 0) {
        if (rank === 3 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
      } else if (board[rightHitTarget] >>> 3 === 0) {
        targets[targets.length] = rightHitTarget; // target is black piece

        if (rank === 1) {
          // promotion and underPromotion
          // target piece is queen by default, target added already above
          targets[targets.length] = rightHitTarget + (12 << 6); // can become rook
          targets[targets.length] = rightHitTarget + (11 << 6); // can become knight
          targets[targets.length] = rightHitTarget + (10 << 6); // can become bishop
        }
      }
    }

    if (canHitLeft) {
      const leftHitTarget = position - 9;
      if (board[leftHitTarget] === 0) {
        // target is empty
        if (rank === 3 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
      } else if (board[leftHitTarget] >>> 3 === 0) {
        targets[targets.length] = leftHitTarget;

        if (rank === 1) {
          // promotion and underPromotion
          // target piece is queen by default, target added already above
          targets[targets.length] = leftHitTarget + (12 << 6); // can become rook
          targets[targets.length] = leftHitTarget + (11 << 6); // can become knight
          targets[targets.length] = leftHitTarget + (10 << 6); // can become bishop
        }
      }
    }

    return targets;
  }

  // is black
  const straightTarget = position + 8;
  if (board[straightTarget] === 0) {
    targets[targets.length] = straightTarget;

    if (rank === 6) {
      // promotion and underPromotion
      // target piece is queen by default, target added already above
      targets[targets.length] = straightTarget + (4 << 6); // can become rook
      targets[targets.length] = straightTarget + (3 << 6); // can become knight
      targets[targets.length] = straightTarget + (2 << 6); // can become bishop
    }

    if (rank === 1) {
      const doubleMoveTarget = position + 16;
      if (board[doubleMoveTarget] === 0) targets[targets.length] = doubleMoveTarget;
    }
  }

  if (canHitRight) {
    const rightHitTarget = position + 9;
    if (board[rightHitTarget] === 0) {
      // target is empty
      if (rank === 4 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
    } else if (board[rightHitTarget] >>> 3 === 1) {
      targets[targets.length] = rightHitTarget; // white target

      if (rank === 6) {
        // promotion and underPromotion
        // target piece is queen by default, target added already above
        targets[targets.length] = rightHitTarget + (4 << 6); // can become rook
        targets[targets.length] = rightHitTarget + (3 << 6); // can become knight
        targets[targets.length] = rightHitTarget + (2 << 6); // can become bishop
      }
    }
  }

  if (canHitLeft) {
    const leftHitTarget = position + 7;
    if (board[leftHitTarget] === 0) {
      if (rank === 4 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
    } else if (board[leftHitTarget] >>> 3 === 1) {
      targets[targets.length] = leftHitTarget;

      if (rank === 6) {
        // promotion and underPromotion
        // target piece is queen by default, target added already above
        targets[targets.length] = leftHitTarget + (4 << 6); // can become rook
        targets[targets.length] = leftHitTarget + (3 << 6); // can become knight
        targets[targets.length] = leftHitTarget + (2 << 6); // can become bishop
      }
    }
  }

  return targets;
};

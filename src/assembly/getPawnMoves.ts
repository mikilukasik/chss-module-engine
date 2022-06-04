export function getPawnMoves(position: i8, board: Uint8Array, color: u8): u16[] {
  const targets: u16[] = [];

  const rank = position >>> 3;
  const file = position & 7;
  const canHitRight = file < 7;
  const canHitLeft = file > 0;

  if (color) {
    const straightTarget: u16 = position - 8;
    if (board[straightTarget] === 0) {
      if (rank === 1) {
        // promotion and underPromotion
        targets[targets.length] = straightTarget + (13 << 6); // can become queen
        targets[targets.length] = straightTarget + (12 << 6); // can become rook
        targets[targets.length] = straightTarget + (11 << 6); // can become knight
        targets[targets.length] = straightTarget + (10 << 6); // can become bishop
      } else {
        targets[targets.length] = straightTarget;
      }

      if (rank === 6) {
        const doubleMoveTarget: u16 = position - 16;
        if (board[doubleMoveTarget] === 0) targets[targets.length] = doubleMoveTarget;
      }
    }

    if (canHitRight) {
      const rightHitTarget: u16 = position - 7;
      if (board[rightHitTarget] === 0) {
        if (rank === 3 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
      } else if (board[rightHitTarget] >>> 3 === 0) {
        if (rank === 1) {
          // promotion and underPromotion

          targets[targets.length] = rightHitTarget + (13 << 6); // can become queen
          targets[targets.length] = rightHitTarget + (12 << 6); // can become rook
          targets[targets.length] = rightHitTarget + (11 << 6); // can become knight
          targets[targets.length] = rightHitTarget + (10 << 6); // can become bishop
        } else {
          targets[targets.length] = rightHitTarget; // target is black piece
        }
      }
    }

    if (canHitLeft) {
      const leftHitTarget: u16 = position - 9;
      if (board[leftHitTarget] === 0) {
        // target is empty
        if (rank === 3 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
      } else if (board[leftHitTarget] >>> 3 === 0) {
        if (rank === 1) {
          // promotion and underPromotion
          targets[targets.length] = leftHitTarget + (13 << 6); // can become queen
          targets[targets.length] = leftHitTarget + (12 << 6); // can become rook
          targets[targets.length] = leftHitTarget + (11 << 6); // can become knight
          targets[targets.length] = leftHitTarget + (10 << 6); // can become bishop
        } else {
          targets[targets.length] = leftHitTarget;
        }
      }
    }

    return targets;
  }

  // is black
  const straightTarget: u16 = position + 8;
  if (board[straightTarget] === 0) {
    if (rank === 6) {
      // promotion and underPromotion
      targets[targets.length] = straightTarget + (5 << 6); // can become queen
      targets[targets.length] = straightTarget + (4 << 6); // can become rook
      targets[targets.length] = straightTarget + (3 << 6); // can become knight
      targets[targets.length] = straightTarget + (2 << 6); // can become bishop
    } else {
      targets[targets.length] = straightTarget;
    }

    if (rank === 1) {
      const doubleMoveTarget: u16 = position + 16;
      if (board[doubleMoveTarget] === 0) targets[targets.length] = doubleMoveTarget;
    }
  }

  if (canHitRight) {
    const rightHitTarget: u16 = position + 9;
    if (board[rightHitTarget] === 0) {
      // target is empty
      if (rank === 4 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
    } else if (board[rightHitTarget] >>> 3 === 1) {
      if (rank === 6) {
        // promotion and underPromotion
        targets[targets.length] = rightHitTarget + (5 << 6); // can become queen
        targets[targets.length] = rightHitTarget + (4 << 6); // can become rook
        targets[targets.length] = rightHitTarget + (3 << 6); // can become knight
        targets[targets.length] = rightHitTarget + (2 << 6); // can become bishop
      } else {
        targets[targets.length] = rightHitTarget; // white target
      }
    }
  }

  if (canHitLeft) {
    const leftHitTarget: u16 = position + 7;
    if (board[leftHitTarget] === 0) {
      if (rank === 4 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
    } else if (board[leftHitTarget] >>> 3 === 1) {
      if (rank === 6) {
        // promotion and underPromotion
        targets[targets.length] = leftHitTarget + (5 << 6); // can become queen
        targets[targets.length] = leftHitTarget + (4 << 6); // can become rook
        targets[targets.length] = leftHitTarget + (3 << 6); // can become knight
        targets[targets.length] = leftHitTarget + (2 << 6); // can become bishop
      } else {
        targets[targets.length] = leftHitTarget;
      }
    }
  }

  return targets;
}

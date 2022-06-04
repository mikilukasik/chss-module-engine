export function getPawnHitMovesNoPromotion(position: i8, board: Uint8Array, color: u8): u16[] {
  const targets: u16[] = [];

  const rank = position >>> 3;
  const file = position & 7;
  const canHitRight = file < 7;
  const canHitLeft = file > 0;

  if (color) {
    if (canHitRight) {
      const rightHitTarget: u16 = position - 7;
      if (board[rightHitTarget] === 0) {
        if (rank === 3 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
      } else if (board[rightHitTarget] >>> 3 === 0) {
        targets[targets.length] = rightHitTarget; // target is black piece
      }
    }

    if (canHitLeft) {
      const leftHitTarget: u16 = position - 9;
      if (board[leftHitTarget] === 0) {
        // target is empty
        if (rank === 3 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
      } else if (board[leftHitTarget] >>> 3 === 0) {
        targets[targets.length] = leftHitTarget;
      }
    }

    return targets;
  }

  // is black

  if (canHitRight) {
    const rightHitTarget: u16 = position + 9;
    if (board[rightHitTarget] === 0) {
      // target is empty
      if (rank === 4 && board[66] === rightHitTarget) targets[targets.length] = rightHitTarget; // en passant
    } else if (board[rightHitTarget] >>> 3 === 1) {
      targets[targets.length] = rightHitTarget; // white target
    }
  }

  if (canHitLeft) {
    const leftHitTarget: u16 = position + 7;
    if (board[leftHitTarget] === 0) {
      if (rank === 4 && board[66] === leftHitTarget) targets[targets.length] = leftHitTarget; // en passant
    } else if (board[leftHitTarget] >>> 3 === 1) {
      targets[targets.length] = leftHitTarget;
    }
  }

  return targets;
}

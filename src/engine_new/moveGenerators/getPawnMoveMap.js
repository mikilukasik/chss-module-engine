export const getPawnMoveMap = (position, board, addToMoveMap) => {
  const piece = board[position];
  const isWhite = piece >>> 3 === 1;

  const rank = position >>> 3;
  const file = position & 7;
  const canHitRight = file < 7;
  const canHitLeft = file > 0;

  if (isWhite) {
    const straightTarget = position - 8;
    if (board[straightTarget] === 0) {
      addToMoveMap(straightTarget, 'to', piece);
      addToMoveMap(position, 'from', 0);

      if (rank === 6) {
        const doubleMoveTarget = position - 16;
        if (board[doubleMoveTarget] === 0) {
          addToMoveMap(doubleMoveTarget, 'to', piece);
          addToMoveMap(position, 'from', 0);
        }
      }
    }

    if (canHitRight) {
      const rightHitTarget = position - 7;
      if (board[rightHitTarget] === 0) {
        if (rank === 3 && board[66] === rightHitTarget) {
          // en passant
          addToMoveMap(rightHitTarget, 'to', piece);
          addToMoveMap(position, 'from', piece ^ 8); //attacking opposite pawn, even if not on target cell
        }
      } else {
        addToMoveMap(rightHitTarget, 'to', piece);
        addToMoveMap(position, 'from', board[rightHitTarget]);
      }
    }

    if (canHitLeft) {
      const leftHitTarget = position - 9;
      if (board[leftHitTarget] === 0) {
        if (rank === 3 && board[66] === leftHitTarget) {
          // en passant
          addToMoveMap(leftHitTarget, 'to', piece);
          addToMoveMap(position, 'from', piece ^ 8); //attacking opposite pawn, even if not on target cell
        }
      } else {
        addToMoveMap(leftHitTarget, 'to', piece);
        addToMoveMap(position, 'from', board[leftHitTarget]);
      }
    }

    return;
  }

  // is black

  const straightTarget = position + 8;
  if (board[straightTarget] === 0) {
    addToMoveMap(straightTarget, 'to', piece);
    addToMoveMap(position, 'from', 0);

    if (rank === 1) {
      const doubleMoveTarget = position + 16;
      if (board[doubleMoveTarget] === 0) {
        addToMoveMap(doubleMoveTarget, 'to', piece);
        addToMoveMap(position, 'from', 0);
      }
    }
  }

  if (canHitRight) {
    const rightHitTarget = position + 9;
    if (board[rightHitTarget] === 0) {
      if (rank === 4 && board[66] === rightHitTarget) {
        // en passant
        addToMoveMap(rightHitTarget, 'to', piece);
        addToMoveMap(position, 'from', piece ^ 8); //attacking opposite pawn, even if not on target cell
      }
    } else {
      addToMoveMap(rightHitTarget, 'to', piece);
      addToMoveMap(position, 'from', board[rightHitTarget]);
    }
  }

  if (canHitLeft) {
    const leftHitTarget = position + 7;
    if (board[leftHitTarget] === 0) {
      if (rank === 4 && board[66] === leftHitTarget) {
        // en passant
        addToMoveMap(leftHitTarget, 'to', piece);
        addToMoveMap(position, 'from', piece ^ 8); //attacking opposite pawn, even if not on target cell
      }
    } else {
      addToMoveMap(leftHitTarget, 'to', piece);
      addToMoveMap(position, 'from', board[leftHitTarget]);
    }
  }
};

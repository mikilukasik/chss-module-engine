export function getKingHitMoves(position: u8, board: Uint8Array, color: u8 = board[position] >>> 3): u8[] {
  const targets: u8[] = [];

  const rank = position >>> 3; // equals to rank
  const file = position & 7; // equals to file

  const canGoUp = rank > 0;
  const canGoDown = rank < 7;
  const canGoLeft = file > 0;
  const canGoRight = file < 7;

  if (canGoUp) {
    const targetUp = position - 8;
    if (board[targetUp] !== 0 && board[targetUp] >>> 3 !== color) targets[targets.length] = targetUp;

    if (canGoLeft) {
      const targetUpLeft = position - 9;
      if (board[targetUpLeft] !== 0 && board[targetUpLeft] >>> 3 !== color) targets[targets.length] = targetUpLeft;
    }

    if (canGoRight) {
      const targetUpRight = position - 7;
      if (board[targetUpRight] !== 0 && board[targetUpRight] >>> 3 !== color) targets[targets.length] = targetUpRight;
    }
  }

  if (canGoDown) {
    const targetDown = position + 8;
    if (board[targetDown] !== 0 && board[targetDown] >>> 3 !== color) targets[targets.length] = targetDown;

    if (canGoLeft) {
      const targetDownLeft = position + 7;
      if (board[targetDownLeft] !== 0 && board[targetDownLeft] >>> 3 !== color)
        targets[targets.length] = targetDownLeft;
    }

    if (canGoRight) {
      const targetDownRight = position + 9;
      if (board[targetDownRight] !== 0 && board[targetDownRight] >>> 3 !== color)
        targets[targets.length] = targetDownRight;
    }
  }

  if (canGoLeft) {
    const targetLeft = position - 1;
    if (board[targetLeft] !== 0 && board[targetLeft] >>> 3 !== color) targets[targets.length] = targetLeft;
  }

  if (canGoRight) {
    const targetRight = position + 1;
    if (board[targetRight] !== 0 && board[targetRight] >>> 3 !== color) targets[targets.length] = targetRight;
  }

  return targets;
}

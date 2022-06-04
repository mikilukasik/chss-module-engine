import { isCaptured } from '.';

export function getKingMoves(position: u8, board: Uint8Array, color: u8 = board[position] >>> 3): u16[] {
  const targets: u16[] = [];

  // const color = board[position] >>> 3;
  const rank = position >>> 3; // equals to rank
  const file = position & 7; // equals to file

  const canGoUp = rank > 0;
  const canGoDown = rank < 7;
  const canGoLeft = file > 0;
  const canGoRight = file < 7;

  if (canGoUp) {
    const targetUp = position - 8;
    if (board[targetUp] === 0 || board[targetUp] >>> 3 !== color) targets[targets.length] = targetUp;

    if (canGoLeft) {
      const targetUpLeft = position - 9;
      if (board[targetUpLeft] === 0 || board[targetUpLeft] >>> 3 !== color) targets[targets.length] = targetUpLeft;
    }

    if (canGoRight) {
      const targetUpRight = position - 7;
      if (board[targetUpRight] === 0 || board[targetUpRight] >>> 3 !== color) targets[targets.length] = targetUpRight;
    }
  }

  if (canGoDown) {
    const targetDown = position + 8;
    if (board[targetDown] === 0 || board[targetDown] >>> 3 !== color) targets[targets.length] = targetDown;

    if (canGoLeft) {
      const targetDownLeft = position + 7;
      if (board[targetDownLeft] === 0 || board[targetDownLeft] >>> 3 !== color)
        targets[targets.length] = targetDownLeft;
    }

    if (canGoRight) {
      const targetDownRight = position + 9;
      if (board[targetDownRight] === 0 || board[targetDownRight] >>> 3 !== color)
        targets[targets.length] = targetDownRight;
    }
  }

  if (canGoLeft) {
    const targetLeft = position - 1;
    if (board[targetLeft] === 0 || board[targetLeft] >>> 3 !== color) targets[targets.length] = targetLeft;
  }

  if (canGoRight) {
    const targetRight = position + 1;
    if (board[targetRight] === 0 || board[targetRight] >>> 3 !== color) targets[targets.length] = targetRight;
  }

  // castling
  if (board[65] === 0) return targets;

  if (color) {
    if (isCaptured(board, 60, 1)) return targets;
    if ((board[65] & 8) === 8 && board[61] === 0 && board[62] === 0 && !isCaptured(board, 61, 1))
      targets[targets.length] = 62;
    if ((board[65] & 4) === 4 && board[59] === 0 && board[58] === 0 && board[57] === 0 && !isCaptured(board, 59, 1))
      targets[targets.length] = 58;
  } else {
    if (isCaptured(board, 4, 0)) return targets;
    if ((board[65] & 2) === 2 && board[5] === 0 && board[6] === 0 && !isCaptured(board, 5, 0))
      targets[targets.length] = 6;
    if ((board[65] & 1) === 1 && board[3] === 0 && board[1] === 0 && board[2] === 0 && !isCaptured(board, 3, 0))
      targets[targets.length] = 2;
  }

  return targets;
}

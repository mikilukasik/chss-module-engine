// import { isCaptured } from '../utils/isCaptured.js';

export const getKingMoveMap = (position, board, addToMoveMap) => {
  const piece = board[position];

  const rank = position >>> 3; // equals to rank
  const file = position & 7; // equals to file

  const canGoUp = rank > 0;
  const canGoDown = rank < 7;
  const canGoLeft = file > 0;
  const canGoRight = file < 7;

  if (canGoUp) {
    const targetUp = position - 8;
    addToMoveMap(targetUp, 'to', piece);
    addToMoveMap(position, 'from', board[targetUp]);

    if (canGoLeft) {
      const targetUpLeft = position - 9;
      addToMoveMap(targetUpLeft, 'to', piece);
      addToMoveMap(position, 'from', board[targetUpLeft]);
    }

    if (canGoRight) {
      const targetUpRight = position - 7;
      addToMoveMap(targetUpRight, 'to', piece);
      addToMoveMap(position, 'from', board[targetUpRight]);
    }
  }

  if (canGoDown) {
    const targetDown = position + 8;
    addToMoveMap(targetDown, 'to', piece);
    addToMoveMap(position, 'from', board[targetDown]);

    if (canGoLeft) {
      const targetDownLeft = position + 7;
      addToMoveMap(targetDownLeft, 'to', piece);
      addToMoveMap(position, 'from', board[targetDownLeft]);
    }

    if (canGoRight) {
      const targetDownRight = position + 9;
      addToMoveMap(targetDownRight, 'to', piece);
      addToMoveMap(position, 'from', board[targetDownRight]);
    }
  }

  if (canGoLeft) {
    const targetLeft = position - 1;
    addToMoveMap(targetLeft, 'to', piece);
    addToMoveMap(position, 'from', board[targetLeft]);
  }

  if (canGoRight) {
    const targetRight = position + 1;
    addToMoveMap(targetRight, 'to', piece);
    addToMoveMap(position, 'from', board[targetRight]);
  }

  // castling ignored in movemaps, it will never be a hit or defend move anyway

  // // castling
  // if (board[65] === 0) return;

  // const color = board[position] >>> 3;

  // if (color) {
  //   if (isCaptured(board, 60, 1)) return targets;
  //   if ((board[65] & 8) === 8 && board[61] === 0 && board[62] === 0 && !isCaptured(board, 61, 1))
  //     targets[targets.length] = 62;
  //   if ((board[65] & 4) === 4 && board[59] === 0 && board[58] === 0 && board[57] === 0 && !isCaptured(board, 59, 1))
  //     targets[targets.length] = 58;
  // } else {
  //   if (isCaptured(board, 4, 0)) return targets;
  //   if ((board[65] & 2) === 2 && board[5] === 0 && board[6] === 0 && !isCaptured(board, 5, 0))
  //     targets[targets.length] = 6;
  //   if ((board[65] & 1) === 1 && board[3] === 0 && board[1] === 0 && board[2] === 0 && !isCaptured(board, 3, 0))
  //     targets[targets.length] = 2;
  // }
};

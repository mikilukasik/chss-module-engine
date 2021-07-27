import { isCaptured } from "../utils/isCaptured";

const pieceAttackValues = new Int8Array([0, 1, 3, 3, 5, 9, 10, 0, 0, 1, 3, 3, 5, 9, 10].map(x => 3 * x));

export const getKingMovesUpdPosVal = (position, board, _color, posVal) => {
  const targets = [];

  const color = board[position] >>> 3;
  const rank = position >>> 3;   // equals to rank
  const file = position & 7;  // equals to file

  const canGoUp = rank > 0;
  const canGoDown = rank < 7;
  const canGoLeft = file > 0;
  const canGoRight = file < 7;
  

  if (canGoUp) {
    const targetUp = position - 8;
    if (board[targetUp] === 0) {
      targets[targets.length] = targetUp;
    } else if ((board[targetUp] >>> 3) === color) {
      // my piece, protect
      posVal[0] += 3;
    } else {
      posVal[0] += pieceAttackValues[board[targetUp]];
      targets[targets.length] = targetUp;
    }

    if (canGoLeft) {
      const targetUpLeft = position - 9;
      if (board[targetUpLeft] === 0) {
        targets[targets.length] = targetUpLeft;
      } else if ((board[targetUpLeft] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        posVal[0] += pieceAttackValues[board[targetUpLeft]];
        targets[targets.length] = targetUpLeft;
      }
    }

    if (canGoRight) {
      const targetUpRight = position - 7;
      if (board[targetUpRight] === 0) {
        targets[targets.length] = targetUpRight;
      } else if ((board[targetUpRight] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        posVal[0] += pieceAttackValues[board[targetUpRight]];
        targets[targets.length] = targetUpRight;
      }
    }
  }
  
  if (canGoDown) {
    const targetDown = position + 8;
    if (board[targetDown] === 0) {
      targets[targets.length] = targetDown;
    } else if ((board[targetDown] >>> 3) === color) {
      // my piece, protect
      posVal[0] += 3;
    } else {
      posVal[0] += pieceAttackValues[board[targetDown]];
      targets[targets.length] = targetDown;
    }

    if (canGoLeft) {
      const targetDownLeft = position + 7;
      if (board[targetDownLeft] === 0) {
        targets[targets.length] = targetDownLeft;
      } else if ((board[targetDownLeft] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        posVal[0] += pieceAttackValues[board[targetDown]];
        targets[targets.length] = targetDownLeft;
      }
    }

    if (canGoRight) {
      const targetDownRight = position + 9;
      if (board[targetDownRight] === 0) {
        targets[targets.length] = targetDownRight;
      } else if ((board[targetDownRight] >>> 3) === color) {
        // my piece, protect
        posVal[0] += 3;
      } else {
        posVal[0] += pieceAttackValues[board[targetDown]];
        targets[targets.length] = targetDownRight;
      }
    }
  }

  if (canGoLeft) {
    const targetLeft = position - 1;
    if (board[targetLeft] === 0) {
      targets[targets.length] = targetLeft;
    } else if ((board[targetLeft] >>> 3) === color) {
      // my piece, protect
      posVal[0] += 3;
    } else {
      posVal[0] += pieceAttackValues[board[targetLeft]];
      targets[targets.length] = targetLeft;
    }
  }

  if (canGoRight) {
    const targetRight = position + 1;
    if (board[targetRight] === 0) {
      targets[targets.length] = targetRight;
    } else if ((board[targetRight] >>> 3) === color) {
      // my piece, protect
      posVal[0] += 3;
    } else {
      posVal[0] += pieceAttackValues[board[targetRight]];
      targets[targets.length] = targetRight;
    }
  }
  
  // castling
  if (board[65] === 0) return targets;

  if (color) {
    if (isCaptured(board, 60, 1)) return targets;
    if ((board[65] & 8) === 8 && board[61] === 0 && board[62] === 0 && !isCaptured(board, 61, 1)) targets[targets.length] = 62;
    if ((board[65] & 4) === 4 && board[59] === 0 && board[58] === 0 && board[57] === 0 && !isCaptured(board, 59, 1)) targets[targets.length] = 58;
  } else {
    if (isCaptured(board, 4, 0)) return targets;
    if ((board[65] & 2) === 2 && board[5] === 0 && board[6] === 0 && !isCaptured(board, 5, 0)) targets[targets.length] = 6;
    if ((board[65] & 1) === 1 && board[3] === 0 && board[1] === 0 && board[2] === 0 && !isCaptured(board, 3, 0)) targets[targets.length] = 2;
  }
  
  return targets;
};

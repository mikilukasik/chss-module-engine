import { oneHotToMovesMap } from "../transformers/oneHotMovesMap.js";
import { move2moveString } from "../transformers/move2moveString.js";

const mirrorCell = (cellIndex) => {
  const rank = cellIndex >>> 3; // equals to rank
  const file = cellIndex & 7; // equals to file

  return ((7 - rank) << 3) + file;
};

const mirrorMove = (move) => {
  const sourceIndex = move >>> 10;
  const targetIndex = move & 63;

  const piece = (move >>> 6) & 15;
  const newPiece = piece ? piece ^ 8 : 0;

  return (
    (mirrorCell(sourceIndex) << 10) + mirrorCell(targetIndex) + (newPiece << 6)
  );
};

const getLmVal = (allValsArr, index) => 1 / allValsArr[index];

const mirrorFlatArray = (arr) => {
  const chunks = [];
  const copiedArr = arr.slice();
  while (copiedArr.length) {
    chunks.push(copiedArr.splice(-8));
  }

  return chunks.flat();
};

const mirrorBoard = (arr) => {
  const chunks = [];
  const copiedArr = arr.slice();
  while (copiedArr.length) {
    chunks.push(copiedArr.splice(-8).map((num) => (num ? num ^ 8 : num)));
  }

  return chunks.flat();
};

const addQueenPromotion = (move, board) => {
  const piece = (move >>> 6) & 15;
  if (piece) return move;

  const sourceIndex = move >>> 10;
  const targetIndex = move & 63;

  if (board[sourceIndex] === 1 && targetIndex >= 56) return move + (5 << 6);
  if (board[sourceIndex] === 9 && targetIndex < 8) return move + (13 << 6);

  return move;
};

export const getXs = ({ board: origBoard, lmt: origLmt, lmf: origLmf, tf }) => {
  const { board, lmf, lmt } = origBoard[64]
    ? { board: origBoard.slice(0, 64), lmf: origLmf, lmt: origLmt }
    : {
        board: mirrorBoard(Array.from(origBoard.slice(0, 64))),
        lmf: mirrorFlatArray(origLmf),
        lmt: mirrorFlatArray(origLmt),
      };

  const arr = [];
  board.forEach((piece) => {
    switch (piece) {
      case 0:
        arr.push([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
        break;

      case 1:
        arr.push([1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
        break;
      case 2:
        arr.push([0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
        break;
      case 3:
        arr.push([0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
        break;
      case 4:
        arr.push([0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0]);
        break;
      case 5:
        arr.push([0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]);
        break;
      case 6:
        arr.push([0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]);
        break;

      case 9:
        arr.push([0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0]);
        break;
      case 10:
        arr.push([0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0]);
        break;
      case 11:
        arr.push([0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]);
        break;
      case 12:
        arr.push([0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0]);
        break;
      case 13:
        arr.push([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]);
        break;
      case 14:
        arr.push([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]);
        break;

      default:
        throw new Error(`invalid piece: ${piece}`);
    }
  });

  const xsAsArray = new Array(64)
    .fill(0)
    .map((_, index) => [
      ...arr[index],
      getLmVal(lmf, index),
      getLmVal(lmt, index),
    ])
    .flat();

  return tf.tensor(xsAsArray, [1, 8, 8, 14]);
};

export const ysToStats = ({ ys, board, nextMoves }) => {
  const mirroredNextMoves = board[64] ? nextMoves : nextMoves.map(mirrorMove);

  const { winningMove } = (
    board[64]
      ? ({ winningMove }) => ({
          winningMove: addQueenPromotion(winningMove, board),
        })
      : ({ winningMove }) => ({
          winningMove: addQueenPromotion(mirrorMove(winningMove), board),
        })
  )(
    oneHotToMovesMap.reduce(
      (p, move, i) => {
        if (!mirroredNextMoves.includes(move)) return p;

        return ys[i] > p.winningValue
          ? { winningMove: move, winningValue: ys[i] }
          : p;
      },
      { winningMove: null, winningValue: -1000 }
    )
  );

  const winningMoveString = move2moveString(winningMove);

  return { winningMoveString /*, moveValues, moveStringValues*/ };
};

export const predict = async ({ board, lmf, lmt, tf, model, nextMoves }) => {
  const xs = getXs({ board, lmf, lmt, tf });

  const predictionTensor = model.predict(xs);
  const ys = await predictionTensor.data();
  predictionTensor.dispose();

  return ysToStats({ ys, board, nextMoves });
};

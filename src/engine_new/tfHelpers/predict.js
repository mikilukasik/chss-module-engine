import { move2moveString } from "../transformers/move2moveString.js";
import { move2oneHot } from "../transformers/oneHotMovesMap.js";

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

export const getXs = ({ inputs, tf }) => {
  const xsAsArray = [];

  for (const { board: origBoard, lmt: origLmt, lmf: origLmf } of inputs) {
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

    xsAsArray.push(
      ...new Array(64)
        .fill(0)
        .map((_, index) => [
          ...arr[index],
          getLmVal(lmf, index),
          getLmVal(lmt, index),
        ])
        .flat()
    );
  }
  return tf.tensor(xsAsArray, [inputs.length, 8, 8, 14]);
};

export const ysToStats = ({
  moveYs,
  winnerYs,
  board,
  nextBoards,
  moveScoreRario,
  winnerScoreRario,
}) => {
  const nextMoves = nextBoards.map((b) => b.move);
  const mirroredNextMoves = board[64] ? nextMoves : nextMoves.map(mirrorMove);

  const sortedMirroredMoves = mirroredNextMoves
    .map((move, moveIndex) => ({
      move,
      score:
        (moveYs[move2oneHot(move)] || 0) * moveScoreRario +
        winnerYs[moveIndex] * winnerScoreRario * (board[64] ? 1 : -1),
    }))
    .sort((a, b) => b.score - a.score);

  const sortedMoves = sortedMirroredMoves.map(({ move: _move, score }) => {
    const move = board[64] ? _move : mirrorMove(_move);
    return {
      move,
      moveString: move2moveString(move),
      score,
    };
  });

  const winningMoveString = sortedMoves[0].moveString;

  return {
    winningMove: sortedMoves[0].move,
    winningMoveString,
    sortedMoves,
  };
};

export const predictMove = async ({
  board,
  lmf,
  lmt,
  tf,
  nextBoards,
  moveModel,
  winnerModel,
  moveScoreRario,
  winnerScoreRario,
}) => {
  const boardXs = getXs({ inputs: [{ board, lmf, lmt }], tf });
  const movePredictionTensor = moveModel.predict(boardXs);
  const moveYs = await movePredictionTensor.data();
  movePredictionTensor.dispose();

  const nextBoardsXss = getXs({ tf, inputs: nextBoards });
  const winnerPredictionTensor = winnerModel.predict(nextBoardsXss);
  const winnerYs = await winnerPredictionTensor.data();
  winnerPredictionTensor.dispose();

  return ysToStats({
    moveYs,
    winnerYs,
    board,
    nextBoards,
    moveScoreRario,
    winnerScoreRario,
  });
};

export const getWinnerPredictor =
  ({ tf, model }) =>
  async ({ board, lmf, lmt }) => {
    const xs = getXs({ inputs: [{ board, lmf, lmt }], tf });
    const predictionTensor = model.predict(xs);
    const ys = await predictionTensor.data();
    predictionTensor.dispose();

    return { winnerValue: ys[0] * (board[64] ? 1 : -1) };
  };

import { board2fen } from '../transformers/board2fen.js';
import { getModel } from './getModel.js';

const indexes = new Array(8)
  .fill(null)
  .map((dummy, row) => new Array(8).fill(0).map((dummy2, col) => 8 * (7 - row) + col))
  .flat();

const getInverseMoves = (arr) => {
  const from = arr.slice(0, 64);
  const to = arr.slice(64);

  const newFrom = indexes.map((i) => from[i]);
  const newTo = indexes.map((i) => to[i]);

  return [...newFrom, ...newTo];
};

export const getPrediction = async ({ modelName, board, repeatedPastFens = [], noLoop = false, tf }) => {
  const {
    model,
    transform,
    constants: { castlingIndex, enPassantIndex, inputLength, needsWNext, movesModel },
  } = await getModel(modelName);

  let fenStr = board2fen(board);
  let needsInverseOutput = false;
  if (needsWNext) {
    const { fen, mirrored } = transform.getWhiteNextFen({ fen: fenStr });
    fenStr = fen;
    needsInverseOutput = mirrored;
  }

  if (noLoop && repeatedPastFens.length && repeatedPastFens.includes(fenStr)) {
    return null;
  }

  const inputTensor = tf.tensor(transform.fen2flatArray({ fenStr, castlingIndex, enPassantIndex }), [
    1,
    8,
    8,
    inputLength,
  ]);
  const outputTensor = model.predict(inputTensor);

  const outputData = await outputTensor.data();

  inputTensor.dispose();
  outputTensor.dispose();

  if (movesModel) {
    return needsInverseOutput ? getInverseMoves(outputData) : outputData;
  }

  let output = outputData[0];
  if (needsInverseOutput) output *= -1;

  return output;
};

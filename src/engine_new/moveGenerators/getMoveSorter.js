import { getPrediction } from '../tfModels/getPrediction';

const MODEL_NAME = 'moves_0.02716-e1-1652296629425';

export const getMoveSorter = async (board) => {
  const prediction = await getPrediction({ board, modelName: MODEL_NAME });

  const moveSorter = (a, b) => {
    const sourceIndexA = a >>> 10;
    const targetIndexA = a & 63;

    const sourceIndexB = b >>> 10;
    const targetIndexB = b & 63;

    const scoreA = prediction[sourceIndexA] * 1.4 + prediction[targetIndexA + 64];
    const scoreB = prediction[sourceIndexB] * 1.4 + prediction[targetIndexB + 64];

    return scoreB - scoreA;
  };

  return moveSorter;
};

import { getPrediction } from '../tfModels/getPrediction.js';

const MODEL_NAME = 'moves_0.02679-e1-1652876197395';

export const getMoveEvaluator = async (board) => {
  const prediction = await getPrediction({ board, modelName: MODEL_NAME });

  const moveEvaluator = (move) => {
    const sourceIndex = move >>> 10;
    const targetIndex = move & 63;

    return prediction[sourceIndex] * 1.4 + prediction[targetIndex + 64];
  };

  return moveEvaluator;
};

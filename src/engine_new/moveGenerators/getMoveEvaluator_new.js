// import { getPredictionV2 } from '../tfModels/getPredictionV2.js';

// const MODEL_NAME = 'moves_0.02679-e1-1652876197395';
const modelName = 'pg_SL';

export const getMoveEvaluator = async ({ game }) => {
  // const prediction = await getPredictionV2({ board, modelName: MODEL_NAME });

  const predictionSocket = await getPredictionSocket();
  const response = await predictionSocket.do('predictMove', { game, modelName });

  const moveEvaluator = (move) => {
    const sourceIndex = move >>> 10;
    const targetIndex = move & 63;

    return prediction[sourceIndex] * 1.4 + prediction[targetIndex + 64];
  };

  return moveEvaluator;
};

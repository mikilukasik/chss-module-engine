declare module "predict.js";

export function predictMove(arg: {
  board: Uint8Array;
  lmf: number[];
  lmt: number[];
  tf: any;
  moveModel: any;
  // winnerModel: any;
  moveScoreRario: number;
  // winnerScoreRario: number;
  nextBoards: {
    move: number;
    board: Uint8Array;
    lmf: number[];
    lmt: number[];
  }[];
}): {
  winningMoveString: string;
  winningMove: number;
  sortedMoves: { move: number; moveString: string; score: number }[];
};

type ModelPredictionInput = {
  board: Uint8Array;
  lmf: number[];
  lmt: number[];
};

// export function getWinnerPredictor(arg: {
//   tf: any;
//   model: any;
// }): function(ModelPredictionInput|ModelPredictionInput[]): {
//   winnerValue: number;
// };

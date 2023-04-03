declare module "predict.js";

export function predict(arg: {
  board: Uint8Array;
  lmf: number[];
  lmt: number[];
  nextMoves: Int16Array;
  tf: any;
  model: any;
}): {
  winningMoveString: string;
  sortedMoves: { move: string; score: number }[];
};

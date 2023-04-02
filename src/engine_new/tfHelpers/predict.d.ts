declare module "predict.js";

export function predict(arg: {
  board: Uint8Array;
  lmf: number[];
  lmt: number[];
  tf: any;
  model: any;
}): any;

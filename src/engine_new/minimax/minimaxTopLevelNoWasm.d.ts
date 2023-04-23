declare module "minimaxTopLevelNoWasm";

export function minimax(
  board: Uint8Array,
  depth: number,
  alpha: number,
  beta: number,
  valueToAdd: number = 0,
  lmf: number[],
  lmt: number[],
  wantsToDraw: boolean
): Promise<number>;

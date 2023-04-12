declare module "minimaxTopLevelNoWasm";

export function minimax(
  board: Uint8Array,
  depth: number,
  alpha: number,
  beta: number,
  valueToAdd: number = 0,
  deepMoveSorters: any[] = [],
  lmf: number[],
  lmt: number[],
  wantsToDraw: boolean
): Promise<number>;

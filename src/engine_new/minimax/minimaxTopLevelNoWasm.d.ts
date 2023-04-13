declare module "minimaxTopLevelNoWasm";

export function minimax(
  board: Uint8Array,
  depth: number,
  alpha: number,
  beta: number,
  valueToAdd: number = 0,
  deepMoveSorters: ((arg: {
    board: Uint8Array;
    moves: Int16Array;
    lmf: number[];
    lmt: number[];
  }) => Promise<Int16Array>)[] = [],
  lmf: number[],
  lmt: number[],
  wantsToDraw: boolean
): Promise<number>;

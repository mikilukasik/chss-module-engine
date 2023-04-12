declare module "getUpdatedLmfLmt";

export function getUpdatedLmfLmt({
  move,
  lmf,
  lmt,
}: {
  move: number;
  lmf: number[];
  lmt: number[];
}): {
  lmf: number[];
  lmt: number[];
};

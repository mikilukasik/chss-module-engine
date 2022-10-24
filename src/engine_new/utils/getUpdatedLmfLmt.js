export const getUpdatedLmfLmt = ({ move, lmf, lmt }) => {
  const newLmf = lmf.map((e) => Math.min(255, e + 1));
  const newLmt = lmt.map((e) => Math.min(255, e + 1));

  const from = move >>> 10;
  const to = move & 63;

  newLmf[from] = 1;
  newLmt[to] = 1;

  return {
    lmf: newLmf,
    lmt: newLmt,
  };
};

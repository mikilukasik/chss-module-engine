const addOne = (lmf, lmt) => {
  for (let i = 0; i < 64; i += 1) {
    lmf[i] = Math.min(lmf[i] + 1, 255);
    lmt[i] = Math.min(lmt[i] + 1, 255);
  }
};

export const getMovedLmfLmt = ({ lmf, lmt, move }) => {
  const sourceIndex = move >>> 10;
  const targetIndex = move & 63;

  lmf[sourceIndex] = 0;
  lmt[targetIndex] = 0;

  addOne(lmf, lmt);

  return { lmf, lmt };
};

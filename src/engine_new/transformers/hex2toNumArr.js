const hexToDec = (hex) => Number(`0x${hex}`);

export const hex2toNumArr = (lmflmtStr) => {
  const result = [];
  for (let i = 0; i < 128; i += 2) {
    result.push(hexToDec(lmflmtStr.substring(i, i + 2)));
  }
  return result;
};

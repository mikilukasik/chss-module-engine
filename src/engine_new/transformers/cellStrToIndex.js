export const cellStrToIndex = (cellStr) => {
  const rank = 8 - cellStr[1];
  const file = cellStr.charCodeAt(0) - 97;

  return 8 * rank + file;
};

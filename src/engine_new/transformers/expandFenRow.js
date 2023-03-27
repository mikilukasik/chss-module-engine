export const expandFenRow = (rowStr) => {
  let result = rowStr;
  for (const char of rowStr)
    if (Number(char)) result = result.replace(char, "1".repeat(Number(char)));
  return result;
};
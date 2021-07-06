export const cellIndex2cellStr = (index) => `${
  String.fromCharCode((index % 8) + 97)
}${
  8 - Math.floor(index / 8)
}`;

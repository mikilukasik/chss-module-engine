import aiFunc from './aiFunc';

const pieceMap = [
  [
    [0.5, 0.5, 0.5, 0.5, 0.5],
    [1, 0.5, 0.5, 0.5, 0.5],
    [0.5, 1, 0.5, 0.5, 0.5],
    [0.5, 0.5, 1, 0.5, 0.5],
    [0.5, 0.5, 0.5, 1, 0.5],
    [0.5, 1, 0.5, 1, 0.5],
    [0.5, 0.5, 0.5, 0.5, 1],
  ],
  [
    [0.5, 0.5, 0.5, 0.5, 0.5],
    [0, 0.5, 0.5, 0.5, 0.5],
    [0.5, 0, 0.5, 0.5, 0.5],
    [0.5, 0.5, 0, 0.5, 0.5],
    [0.5, 0.5, 0.5, 0, 0.5],
    [0.5, 0, 0.5, 0, 0.5],
    [0.5, 0.5, 0.5, 0.5, 0],
  ],
];

export const getInput = (board) => {
  const input = [board[64]];

  for (const [y, cell] of Array.from(board).slice(0,64).entries()) {
    input.push(...pieceMap[cell >>> 3][cell & 7])
  }
  return input;
}

export const evalOnNN = (board) => {
  const input = getInput(board);
  return aiFunc(input);
};

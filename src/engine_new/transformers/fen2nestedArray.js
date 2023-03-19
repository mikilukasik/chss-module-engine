export const fen2nestedArray = (fen) => {
  const positions = fen.split(" ")[0].split("/");
  const board = [];

  positions.forEach((row, rowIndex) => {
    board[rowIndex] = [];
    let columnIndex = 0;

    for (const char of row) {
      if (isNaN(parseInt(char))) {
        board[rowIndex][columnIndex] = char;
        columnIndex++;
      } else {
        for (let i = 0; i < parseInt(char); i++) {
          board[rowIndex][columnIndex] = "-";
          columnIndex++;
        }
      }
    }
  });

  return board;
};

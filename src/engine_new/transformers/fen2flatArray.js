export const fen2flatArray = (fen) => {
  const positions = fen.split(" ")[0].split("/");

  const board = [];
  let index = 0;

  positions.forEach((row) => {
    // board[rowIndex] = [];

    for (const char of row) {
      if (isNaN(parseInt(char))) {
        board[index] = char;
        index++;
      } else {
        for (let i = 0; i < parseInt(char); i++) {
          board[index] = "-";
          index++;
        }
      }
    }
  });

  return board;
};

export const getFenDiff = (prevFen, currFen) => {
  const prevRows = prevFen.split(" ")[0].split("/");
  const currRows = currFen.split(" ")[0].split("/");

  const addedPieces = [];
  const removedPieces = [];
  const movedPieces = [];

  for (let i = 0; i < prevRows.length; i++) {
    const prevRow = prevRows[i];
    const currRow = currRows[i];

    let prevCol = 0;
    let currCol = 0;

    while (prevCol < prevRow.length || currCol < currRow.length) {
      const prevChar = prevRow.charAt(prevCol);
      const currChar = currRow.charAt(currCol);

      if (prevChar === currChar) {
        prevCol++;
        currCol++;
        continue;
      }

      if (currChar === undefined) {
        // Piece has been removed
        removedPieces.push(`${String.fromCharCode(97 + prevCol)}${8 - i}`);
        prevCol++;
        continue;
      }

      if (prevChar === undefined) {
        // Piece has been added
        addedPieces.push({
          piece: currChar.toLowerCase(),
          square: `${String.fromCharCode(97 + currCol)}${8 - i}`,
        });
        currCol++;
        continue;
      }

      // Piece has been moved
      movedPieces.push({
        piece: currChar.toLowerCase(),
        from: `${String.fromCharCode(97 + prevCol)}${8 - i}`,
        to: `${String.fromCharCode(97 + currCol)}${8 - i}`,
      });
      prevCol++;
      currCol++;
    }
  }

  return {
    addedPieces,
    removedPieces,
    movedPieces,
  };
};

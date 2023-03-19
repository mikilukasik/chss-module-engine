const parseFen = (fen) => {
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

const findDifferences = (prevBoard, currBoard) => {
  const addedPieces = {};
  const removedPieces = {};

  for (let i = 0; i < prevBoard.length; i++) {
    for (let j = 0; j < prevBoard[i].length; j++) {
      const prevPiece = prevBoard[i][j];
      const currPiece = currBoard[i][j];

      if (prevPiece !== currPiece) {
        if (prevPiece !== "-") {
          removedPieces[prevPiece] = [
            ...(removedPieces[prevPiece] || []),
            [j, i],
          ];
        }

        if (currPiece !== "-") {
          addedPieces[currPiece] = [...(addedPieces[currPiece] || []), [j, i]];
        }
      }
    }
  }

  return {
    addedPieces,
    removedPieces,
  };
};

const getDistance = (source, target) =>
  Math.abs(source[0] - target[0]) + Math.abs(source[1] - target[1]);

const getMoveOptionsByDistance = (sourceSquares, targetSquares) => {
  const moveOptions = sourceSquares
    .map((source) =>
      targetSquares.map((target) => {
        const distance = getDistance(source, target);

        return {
          distance,
          source: `${String.fromCharCode(97 + source[0])}${8 - source[1]}`,
          target: `${String.fromCharCode(97 + target[0])}${8 - target[1]}`,
        };
      })
    )
    .flat();

  return moveOptions.sort((a, b) => b.distance - a.distance);
};

export const getFenDiff = (prevFen, currFen) => {
  const prevBoard = parseFen(prevFen);
  const currBoard = parseFen(currFen);

  const { addedPieces, removedPieces } = findDifferences(prevBoard, currBoard);

  const movedPieces = [];
  const addedPiecesResult = [];
  const removedPiecesResult = [];

  for (const piece of Object.keys({ ...removedPieces, ...addedPieces })) {
    const sourceSquares = removedPieces[piece];
    const targetSquares = addedPieces[piece];
    const targetSquaresAsStrings = (targetSquares || []).map(
      ([j, i]) => `${String.fromCharCode(97 + j)}${8 - i}`
    );

    if (!sourceSquares || !sourceSquares.length) {
      addedPiecesResult.push(
        ...targetSquaresAsStrings.map((square) => ({ square, piece }))
      );
      continue;
    }

    const sourceSquaresAsStrings = sourceSquares.map(
      ([j, i]) => `${String.fromCharCode(97 + j)}${8 - i}`
    );

    if (!targetSquares || !targetSquares.length) {
      removedPiecesResult.push(
        ...sourceSquaresAsStrings.map((square) => ({ square }))
      );
      continue;
    }

    const moveOptionsByDistance = getMoveOptionsByDistance(
      sourceSquares,
      targetSquares
    );

    while (
      sourceSquaresAsStrings.length &&
      targetSquaresAsStrings.length &&
      moveOptionsByDistance.length
    ) {
      const possibleMove = moveOptionsByDistance.pop();
      if (
        sourceSquaresAsStrings.includes(possibleMove.source) &&
        targetSquaresAsStrings.includes(possibleMove.target)
      ) {
        movedPieces.push({
          piece,
          from: possibleMove.source,
          to: possibleMove.target,
        });

        sourceSquaresAsStrings.splice(
          sourceSquaresAsStrings.indexOf(possibleMove.source),
          1
        );
        targetSquaresAsStrings.splice(
          targetSquaresAsStrings.indexOf(possibleMove.target),
          1
        );
      }
    }

    addedPiecesResult.push(
      ...targetSquaresAsStrings.map((square) => ({
        square,
        piece,
      }))
    );
    removedPiecesResult.push(
      ...sourceSquaresAsStrings.map((square) => ({ square }))
    );
  }

  return {
    addedPieces: addedPiecesResult,
    removedPieces: removedPiecesResult,
    movedPieces,
  };
};

import { fen2nestedArray } from "../transformers/fen2nestedArray.js";

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

const getPromotionMove = ({
  movedPieces: _mp,
  addedPiecesResult: _ap,
  removedPiecesResult: _rp,
}) => {
  const movedPieces = _mp.slice();
  const addedPiecesResult = _ap.slice();
  const removedPiecesResult = _rp.slice();

  if (
    movedPieces.length === 0 &&
    addedPiecesResult.length === 1 &&
    removedPiecesResult.length > 0
  ) {
    if (addedPiecesResult[0].square[1] === "1") {
      const promotionSourceIndex = removedPiecesResult.findIndex(
        ({ square, piece }) => piece === "p" && square[1] === "2"
      );
      if (promotionSourceIndex >= 0) {
        const promotionMove = {
          piece: addedPiecesResult[0].piece,
          from: removedPiecesResult[promotionSourceIndex].square,
          to: addedPiecesResult[0].square,
        };
        addedPiecesResult.pop();
        removedPiecesResult.splice(promotionSourceIndex, 1);
        return {
          movedPieces,
          addedPieces: addedPiecesResult,
          removedPieces: removedPiecesResult,
          promotionMove,
        };
      }
    }

    if (addedPiecesResult[0].square[1] === "8") {
      const promotionSourceIndex = removedPiecesResult.findIndex(
        ({ square, piece }) => piece === "P" && square[1] === "7"
      );
      if (promotionSourceIndex >= 0) {
        const promotionMove = {
          piece: addedPiecesResult[0].piece,
          from: removedPiecesResult[promotionSourceIndex].square,
          to: addedPiecesResult[0].square,
        };
        addedPiecesResult.pop();
        removedPiecesResult.splice(promotionSourceIndex, 1);
        return {
          movedPieces,
          addedPieces: addedPiecesResult,
          removedPieces: removedPiecesResult,
          promotionMove,
        };
      }
    }
  }

  return {
    movedPieces,
    addedPieces: addedPiecesResult,
    removedPieces: removedPiecesResult,
    promotionMove: null,
  };
};

export const getFenDiff = (prevFen, currFen) => {
  const prevBoard = fen2nestedArray(prevFen);
  const currBoard = fen2nestedArray(currFen);

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
        ...sourceSquaresAsStrings.map((square) => ({ square, piece }))
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

  return getPromotionMove({
    addedPiecesResult,
    removedPiecesResult,
    movedPieces,
  });
};

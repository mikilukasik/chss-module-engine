import { getKnightMoves } from "../moveGenerators/getKnightMoves.js";
import { getQueenMoves } from "../moveGenerators/getQueenMoves.js";
import { move2moveIndexes } from "./move2moveIndexes.js";

const pieces = [
  "",
  "p",
  "b",
  "n",
  "r",
  "q",
  "k",
  "",
  "",
  "P",
  "B",
  "N",
  "R",
  "Q",
  "K",
];

export const oneHotToMoveIndexesMap = [];

const canPromoteToRook = (from, to) => {
  const isNearMove = [7, 8, 9].includes(Math.abs(from - to));
  if (!isNearMove) return false;

  if (from >= 8 && from < 16 && to < 8) return true;
  if (from >= 48 && from < 56 && to >= 56) return true;

  return false;
};

let oneHotIndex = 0;
export const movesToOneHotMap = new Array(64).fill(0).reduce((p, c, i) => {
  p[i] = {};

  getQueenMoves(i, new Array(64).fill(0), 1).forEach((target) => {
    oneHotToMoveIndexesMap[oneHotIndex] = [i, target, ""];
    p[i][target] = { "": oneHotIndex++ };

    if (canPromoteToRook(i, target)) {
      oneHotToMoveIndexesMap[oneHotIndex] = [i, target, "n"];
      p[i][target].n = oneHotIndex++;
    }
  });

  getKnightMoves(i, new Array(64).fill(0), 1).forEach((target) => {
    oneHotToMoveIndexesMap[oneHotIndex] = [i, target, ""];
    p[i][target] = { "": oneHotIndex++ };
  });

  return p;
}, {});

// add resign as a valid move, symbolised with 0,0
oneHotToMoveIndexesMap[oneHotIndex] = [0, 0, ""];
movesToOneHotMap["0"]["0"] = { "": oneHotIndex++ };

export const oneHotToMovesMap = oneHotToMoveIndexesMap.map(
  ([source, target, piece]) => {
    // TODO: add knight promotion and resign logic here
    // does this work for queen promo?
    return (
      (source << 10) +
      target +
      (piece ? pieces.indexOf(piece.toUpperCase()) << 6 : 0)
    );
  }
);

export const move2oneHot = (move) => {
  const [from, to, _piece] = move2moveIndexes(move);
  const piece = _piece === "q" ? "" : _piece;

  return movesToOneHotMap[from][to][piece] || null;
};

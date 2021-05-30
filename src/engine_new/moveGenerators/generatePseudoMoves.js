import { getBishopMoves } from "./getBishopMoves";
import { getKingMoves } from "./getKingMoves";
import { getKnightMoves } from "./getKnightMoves";
import { getPawnMoves } from "./getPawnMoves";
import { getQueenMoves } from "./getQueenMoves";
import { getRookMoves } from "./getRookMoves";

const moveGenerators = [
  null,
  getPawnMoves,
  getBishopMoves,
  getKnightMoves,
  getRookMoves,
  getQueenMoves,
  getKingMoves,
];

export const generatePseudoMoves = (board) => {
  const pseudoMoves = [];
  const color = board[64];

  for (let cellIndex = 63; cellIndex >= 0; cellIndex -= 1) {
    if (board[cellIndex] === 0 || board[cellIndex] >> 3 !== color) continue;  // empty cell or not the color to move

    const targetIndexes = moveGenerators[board[cellIndex] & 7](cellIndex, board, color);
    if (!targetIndexes.length) continue;
    
    const sourcePart = cellIndex << 6;
    for (const targetIndex of targetIndexes) pseudoMoves[pseudoMoves.length] = sourcePart + targetIndex;
  }

  return new Int16Array(pseudoMoves);
};

import { getBishopMoveMap } from './getBishopMoveMap.js';
import { getKingMoveMap } from './getKingMoveMap.js';
import { getKnightMoveMap } from './getKnightMoveMap.js';
import { getPawnMoveMap } from './getPawnMoveMap.js';
import { getQueenMoveMap } from './getQueenMoveMap.js';
import { getRookMoveMap } from './getRookMoveMap.js';

const moveMapGenerators = [
  null,
  getPawnMoveMap,
  getBishopMoveMap,
  getKnightMoveMap,
  getRookMoveMap,
  getQueenMoveMap,
  getKingMoveMap,
];

export const getPseudoMoveMap = (board) => {
  const moveMap = new Array(64).fill(null);

  const addToMoveMap = (index, toOrFrom, pieceKey) => {
    if (!moveMap[index]) moveMap[index] = {};
    if (!moveMap[index][toOrFrom]) moveMap[index][toOrFrom] = {};

    if (!moveMap[index][toOrFrom][pieceKey]) {
      moveMap[index][toOrFrom][pieceKey] = 1;
      return;
    }

    moveMap[index][toOrFrom][pieceKey] += 1;
  };

  for (let cellIndex = 63; cellIndex >= 0; cellIndex -= 1) {
    if (board[cellIndex] === 0) continue; // empty cell

    moveMapGenerators[board[cellIndex] & 7](cellIndex, board, addToMoveMap);
  }

  // console.log('----');
  // console.log(moveMap);
  // process.exit(0);

  return moveMap;
};

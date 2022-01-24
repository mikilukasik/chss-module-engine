import { getHitMoves } from "../moveGenerators/getHitMoves";
import { getDefenderValues } from "../utils/getDefenderValues";

const pieceValues = new Int8Array([0, -1, -3, -3, -5, -9, -64, 0, 0, 1, 3, 3, 5, 9, 64]);
const positivePieceValues = new Int8Array([0, 1, 3, 3, 5, 9, 64, 0, 0, 1, 3, 3, 5, 9, 64]);

export const getPieceBalance = (board) => {
  let pieceBalance = 0;
  for (let index = 0; index <= 63; index += 1) {
    pieceBalance += pieceValues[board[index]];
  }

  return pieceBalance << 8;
}

export const evaluateBoard = (board) => {
  // return getPieceBalance(board);

  let pieceBalance = 0;
  const attackMap = [];
  const defendMap = [];

  const kingCell = board.indexOf(6 + ((board[64] ^ 1) << 3));

  for (let index = 0; index <= 63; index += 1) {
    if (board[index] === 0) continue;

    pieceBalance += pieceValues[board[index]];

    if (board[index] >>> 3 === board[64]) {
      // piece is color to move, can be attacker
      
      const hitCells = getHitMoves(board, index);
      if (hitCells.includes(kingCell)) throw false; // king can be hit, board is illegal

      for (const tc of hitCells) {
        attackMap[tc] = (attackMap[tc] || []).concat(positivePieceValues[board[index] & 7]);
        if (!defendMap[tc]) defendMap[tc] = getDefenderValues(board, tc, board[64])
      }
    }
  }

  let hitScore = 0;
  
  cellLoop:
  for (let index of Object.keys(attackMap)) {
    let thisCellValue = 0;
    let weakestProtector;
    let weakestAttacker;
    let hasMoreAttackers;
    let hasMoreProtectors;
    if (defendMap[index].length === 0) { // cell has no protector
      // this cell can be hit, add value and check next cell
      const thisHitScore = positivePieceValues[ board[index] ];
      // allHitScore += thisHitScore; 
      hitScore = Math.max(hitScore, thisHitScore);
      continue cellLoop;
    }
    // cell has protector

    thisCellValue += positivePieceValues[ board[index] ]; // add cell value

    attackMap[index].sort((a, b) => b - a); // weakest attacker to the end;
    weakestAttacker = attackMap[index].pop();

    defendMap[index].sort((a, b) => b - a); // weakest protector to the end;
    weakestProtector = defendMap[index].pop();

    hasMoreAttackers = attackMap[index].length !== 0;
    if (
      hasMoreAttackers &&
      weakestAttacker < weakestProtector // the protector worth more than the 1st attacker used
    ) {
      // break here, protector will not be used, doesn't worth it
      // allHitScore += thisCellValue; 
      hitScore = Math.max(hitScore, thisCellValue);
      continue cellLoop;
    }
    // weakest attacker will be hit

    thisCellValue -= weakestAttacker; // deduct weakest attacker

    if (!hasMoreAttackers) { // no more attackers
      if (thisCellValue > 0) {
        // allHitScore += thisCellValue; 
        hitScore = Math.max(hitScore, thisCellValue);
      }//hitScore += thisCellValue; // add cellvalue if worth to hit
      continue cellLoop;
    }
    // there are more attackers

    weakestAttacker = attackMap[index].pop(); // second weakest
    hasMoreProtectors = defendMap[index].length !== 0;
    while (true) {
      if (
        hasMoreProtectors &&
        weakestProtector < weakestAttacker
      ) {
        // break here, attacker will not be used, doesn't worth it
        if (thisCellValue > 0) {
          // add cellvalue if worth to hit
          // // allHitScore += thisCellValue; 
          hitScore = Math.max(hitScore, thisCellValue);
        }
        continue cellLoop;
      }
      // weakest protector will be hit

      thisCellValue += weakestProtector; // add weakest protector value

      // while (true) {
      if (!hasMoreProtectors) { // no more protectors
        if (thisCellValue > 0) {
          // add cellvalue if worth to hit
          // // allHitScore += thisCellValue; 
          hitScore = Math.max(hitScore, thisCellValue);
        }
        continue cellLoop;
      }
      // there are more protectors

      weakestProtector = defendMap[index].pop();
      hasMoreAttackers = attackMap[index].length !== 0;

      if (
        hasMoreAttackers &&
        weakestAttacker < weakestProtector
      ) {
        // break here, attacker will not be used, doesn't worth it
        if (thisCellValue > 0) {
          // add cellvalue if worth to hit
          // allHitScore += thisCellValue; 
          hitScore = Math.max(hitScore, thisCellValue);
        }
        continue cellLoop;
      }
      // weakest attacker will be hit

      thisCellValue -= weakestAttacker;

      if (!hasMoreAttackers) { // no more attackers
        if (thisCellValue > 0) {
          // add cellvalue if worth to hit
          // allHitScore += thisCellValue; 
          hitScore = Math.max(hitScore, thisCellValue);
        }
        continue cellLoop;
      }
      // there are more attackers

      weakestAttacker = attackMap[index].pop();
      hasMoreProtectors = defendMap[index].length !== 0;
    }
  }
  return (board[64] === 1 ? pieceBalance + hitScore : pieceBalance - hitScore) << 8;
};
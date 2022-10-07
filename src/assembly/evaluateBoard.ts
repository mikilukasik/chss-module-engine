import { getHitMovesNoPromotion, getDefenderValues } from '.';
const pieceValues: f32[] = [0, -1, -3.33, -3.05, -5.63, -9.5, -15, 0, 0, 1, 3.33, 3.05, 5.63, 9.5, 15];
const positivePieceValues: f32[] = [0, 1, 3.33, 3.05, 5.63, 9.5, 15, 0, 0, 1, 3.33, 3.05, 5.63, 9.5, 15];

const cellLoop = (
  board: Uint8Array,
  attackMap: Map<u8, f32[]>,
  defendMap: Map<u8, f32[]>,
  attackedIndexes: u8[],
  hitScore: f32,
  i: u8,
): f32 => {
  // of attackMap.keys()) {
  let thisCellValue: f32 = 0;
  let weakestProtector: f32;
  let weakestAttacker: f32;
  let hasMoreAttackers: bool;
  let hasMoreProtectors: bool;
  if (defendMap.get(attackedIndexes[i]).length === 0) {
    // cell has no protector
    // this cell can be hit, add value and check next cell
    const thisHitScore: f32 = positivePieceValues[board[attackedIndexes[i]]];
    // allHitScore += thisHitScore;
    if (thisHitScore > hitScore) hitScore = thisHitScore;

    return hitScore;
  }
  // cell has protector

  thisCellValue += positivePieceValues[board[attackedIndexes[i]]]; // add cell value

  attackMap.get(attackedIndexes[i]).sort((a, b) => {
    if (a > b) return -1;
    if (b > a) return 1;
    return 0;
  }); // weakest attacker to the end;
  weakestAttacker = attackMap.get(attackedIndexes[i]).pop();

  defendMap.get(attackedIndexes[i]).sort((a, b) => {
    if (a > b) return -1;
    if (b > a) return 1;
    return 0;
  }); // weakest protector to the end;
  weakestProtector = defendMap.get(attackedIndexes[i]).pop();

  hasMoreAttackers = attackMap.get(attackedIndexes[i]).length !== 0;
  if (
    hasMoreAttackers &&
    weakestAttacker < weakestProtector // the protector worth more than the 1st attacker used
  ) {
    // break here, protector will not be used, doesn't worth it
    // allHitScore += thisCellValue;
    if (thisCellValue > hitScore) hitScore = thisCellValue;

    return hitScore;
  }
  // weakest attacker will be hit

  thisCellValue -= weakestAttacker; // deduct weakest attacker

  if (!hasMoreAttackers) {
    // no more attackers
    if (thisCellValue > 0) {
      // allHitScore += thisCellValue;
      if (thisCellValue > hitScore) hitScore = thisCellValue;
    } //hitScore += thisCellValue; // add cellvalue if worth to hit
    return hitScore;
  }
  // there are more attackers

  weakestAttacker = attackMap.get(attackedIndexes[i]).pop(); // second weakest
  hasMoreProtectors = defendMap.get(attackedIndexes[i]).length !== 0;
  while (true) {
    if (hasMoreProtectors && weakestProtector < weakestAttacker) {
      // break here, attacker will not be used, doesn't worth it
      if (thisCellValue > 0) {
        // add cellvalue if worth to hit
        // // allHitScore += thisCellValue;
        if (thisCellValue > hitScore) hitScore = thisCellValue;
      }
      return hitScore;
    }
    // weakest protector will be hit

    thisCellValue += weakestProtector; // add weakest protector value

    // while (true) {
    if (!hasMoreProtectors) {
      // no more protectors
      if (thisCellValue > 0) {
        // add cellvalue if worth to hit
        // // allHitScore += thisCellValue;
        if (thisCellValue > hitScore) hitScore = thisCellValue;
      }
      return hitScore;
    }
    // there are more protectors

    weakestProtector = defendMap.get(attackedIndexes[i]).pop();
    hasMoreAttackers = attackMap.get(attackedIndexes[i]).length !== 0;

    if (hasMoreAttackers && weakestAttacker < weakestProtector) {
      // break here, attacker will not be used, doesn't worth it
      if (thisCellValue > 0) {
        // add cellvalue if worth to hit
        // allHitScore += thisCellValue;
        if (thisCellValue > hitScore) hitScore = thisCellValue;
      }
      return hitScore;
    }
    // weakest attacker will be hit

    thisCellValue -= weakestAttacker;

    if (!hasMoreAttackers) {
      // no more attackers
      if (thisCellValue > 0) {
        // add cellvalue if worth to hit
        // allHitScore += thisCellValue;
        if (thisCellValue > hitScore) hitScore = thisCellValue;
      }
      return hitScore;
    }
    // there are more attackers

    weakestAttacker = attackMap.get(attackedIndexes[i]).pop();
    hasMoreProtectors = defendMap.get(attackedIndexes[i]).length !== 0;
  }
};

export function evaluateBoard(board: Uint8Array, valueToAdd: f32 = 0): f32[] {
  let pieceBalance: f32 = 0;
  const attackMap = new Map<u8, f32[]>();
  const defendMap = new Map<u8, f32[]>();

  const kingCell = u8(board.indexOf(6 + ((board[64] ^ 1) << 3)));

  let hitCells: u8[];

  for (let index: u8 = 0; index <= 63; index += 1) {
    if (board[index] === 0) continue;

    pieceBalance += pieceValues[board[index]];

    if (board[index] >>> 3 === board[64]) {
      // piece is color to move, can be attacker

      hitCells = getHitMovesNoPromotion(board, index);
      if (hitCells.includes(kingCell)) return [1, 0]; // king can be hit, board is illegal

      for (let i: u8 = 0, len = u8(hitCells.length); i < len; i += 1) {
        attackMap.set(
          hitCells[i],
          (attackMap.has(hitCells[i]) ? attackMap.get(hitCells[i]) : []).concat([
            positivePieceValues[board[index] & 7],
          ]),
        );

        if (!defendMap.has(hitCells[i])) defendMap.set(hitCells[i], getDefenderValues(board, hitCells[i], board[64]));
      }
    }
  }

  let hitScore: f32 = 0;

  const attackedIndexes: u8[] = attackMap.keys();

  for (let i: u8 = 0, len = u8(attackedIndexes.length); i < len; i += 1) {
    hitScore = cellLoop(board, attackMap, defendMap, attackedIndexes, hitScore, i);
  }

  return [0, valueToAdd + board[64] === 1 ? pieceBalance + hitScore : pieceBalance - hitScore]; // << 8;
}

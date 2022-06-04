import * as assert from 'assert';
import {
  getMovedBoard,
  getPawnMoves,
  getPawnHitMovesNoPromotion,
  getKnightMoves,
  getKnightHitMoves,
  getKingMoves,
  getKingHitMoves,
  getQueenMoves,
  getQueenHitMoves,
  getBishopMoves,
  getBishopHitMoves,
  getRookMoves,
  getRookHitMoves,
  isCaptured,
  generatePseudoMoves,
  getHitMovesNoPromotion,
  getDefenderValues,
  evaluateBoard,
  perft,
  // typeTest,
} from '../index.js';
import { perftTester } from './perftTester.js';

// console.log(typeTest(0));
// process.exit(0);

assert.deepStrictEqual(
  getMovedBoard(
    55342,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
  ),
  [
    4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 9, 0, 9, 9, 9, 9, 9, 9, 0, 9, 12, 11, 10, 13, 14, 10, 11, 12, 0, 15, 0,
  ],
);
console.log('getMovedBoard ok');

assert.deepStrictEqual(
  isCaptured(
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    60,
    1,
  ),
  0,
);
assert.deepStrictEqual(
  isCaptured(
    [
      4, 0, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    60,
    1,
  ),
  1,
);
console.log('isCaptured ok');

assert.deepStrictEqual(
  evaluateBoard([
    0, 0, 0, 4, 6, 0, 0, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 12, 1, 0, 0,
  ]),
  9.499999046325684,
);
assert.deepStrictEqual(
  evaluateBoard([
    0, 0, 0, 0, 6, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 12, 1, 0, 0,
  ]),
  5.630000114440918,
);
assert.deepStrictEqual(
  evaluateBoard([
    10, 0, 0, 0, 6, 0, 0, 4, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 12, 1, 0, 0,
  ]),
  9.5367431640625e-7,
);
assert.deepStrictEqual(
  evaluateBoard([
    0, 0, 0, 0, 6, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 12, 1, 0, 0,
  ]),
  5.629999160766602,
);
console.log('evaluateBoard ok');

assert.deepStrictEqual(
  getDefenderValues(
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    52,
    0,
  ),
  [3.049999952316284, 9.5, 3.3299999237060547, 15],
);
console.log('getDefenderValues ok');

assert.deepStrictEqual(
  getHitMovesNoPromotion(
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 9, 9, 9, 0, 9, 9, 9, 12, 11, 10, 13, 14, 0, 11, 12, 1, 15, 0,
    ],
    56,
  ),
  [8],
);
assert.deepStrictEqual(
  getHitMovesNoPromotion(
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 9, 9, 9, 0, 9, 9, 9, 12, 11, 10, 13, 14, 0, 11, 12, 1, 15, 0,
    ],
    47,
  ),
  [11],
);
console.log('getHitMovesNoPromotion ok');

assert.deepStrictEqual(
  getPawnMoves(
    12,
    [
      0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 14, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 1, 0, 0,
    ],
    1,
  ),
  [836, 772, 708, 644, 835, 771, 707, 643],
);

assert.deepStrictEqual(
  getPawnMoves(
    50,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [42, 34],
);
console.log('getPawnMoves ok');

assert.deepStrictEqual(
  getPawnHitMovesNoPromotion(
    50,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    1,
  ),
  [],
);

assert.deepStrictEqual(
  getPawnHitMovesNoPromotion(
    50,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [43],
);
console.log('getPawnHitMovesNoPromotion ok');

assert.deepStrictEqual(
  getKnightMoves(
    62,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [45, 47],
);
console.log('getKnightMoves ok');

assert.deepStrictEqual(
  getKnightHitMoves(
    62,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [],
);
assert.deepStrictEqual(
  getKnightHitMoves(
    62,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 1, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [52],
);
console.log('getKnightHitMoves ok');

assert.deepStrictEqual(
  getKingMoves(
    60,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 0, 0, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
  ),
  [52, 51],
);
console.log('getKingMoves ok');

assert.deepStrictEqual(
  getKingHitMoves(
    60,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 0, 0, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
  ),
  [],
);
assert.deepStrictEqual(
  getKingHitMoves(
    60,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 1, 0, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
  ),
  [51],
);
console.log('getKingHitMoves ok');

assert.deepStrictEqual(
  getQueenMoves(
    59,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [50, 41, 32, 52, 45, 38, 31, 51, 43, 35, 27, 19, 11],
);
console.log('getQueenMoves ok');

assert.deepStrictEqual(
  getQueenHitMoves(
    59,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [11],
);
console.log('getQueenHitMoves ok');

assert.deepStrictEqual(
  getBishopMoves(
    58,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [49, 40, 51, 44, 37, 30, 23],
);
console.log('getBishopMoves ok');

assert.deepStrictEqual(
  getBishopHitMoves(
    47,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 9, 0, 0, 0, 9, 9, 9, 9, 12, 11, 10, 13, 14, 0, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [11],
);
console.log('getBishopHitMoves ok');

assert.deepStrictEqual(
  getRookMoves(
    56,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [48, 40, 32, 24, 16, 8],
);
console.log('getRookMoves ok');

assert.deepStrictEqual(
  getRookHitMoves(
    56,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
    ],
    true,
  ),
  [8],
);
console.log('getRookHitMoves ok');

assert.deepStrictEqual(
  generatePseudoMoves([
    0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 14, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 1, 0, 0,
  ]),
  [10243, 13123, 13059, 12995, 12931, 10242, 10241, 10258, 10257, 10259, 10249, 10251, 13124, 13060, 12996, 12932],
);

assert.deepStrictEqual(
  generatePseudoMoves([
    4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 1, 15, 0,
  ]),
  [
    49192, 49184, 50217, 50209, 51242, 51234, 52267, 52259, 53292, 53284, 54317, 54309, 55342, 55334, 56367, 56359,
    58408, 58410, 63533, 63535,
  ],
);
console.log('generatePseudoMoves ok');

assert.deepStrictEqual(
  perft(
    4,
    [
      4, 3, 2, 5, 6, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 12, 11, 10, 13, 14, 10, 11, 12, 0, 0, 0,
    ],
  ),
  197281,
);
console.log('basic perft ok');

assert.equal(perftTester().errorCount, 0);
console.log('full perftTest ok');

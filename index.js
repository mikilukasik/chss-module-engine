import * as fs from 'fs';
import * as path from 'path';
import * as loader from '@assemblyscript/loader';

const imports = {};
const source = fs.readFileSync(path.resolve('build/untouched.wasm'));

const wasmModule = loader.instantiateSync(source, imports);

const {
  __newArray,
  __getArray,
  Uint8Array_ID,
  getMovedBoard: getMovedBoardWasm,
  getPawnMoves: getPawnMovesWasm,
  getPawnHitMovesNoPromotion: getPawnHitMovesNoPromotionWasm,
  getKnightMoves: getKnightMovesWasm,
  getKnightHitMoves: getKnightHitMovesWasm,
  getKingMoves: getKingMovesWasm,
  getKingHitMoves: getKingHitMovesWasm,
  getQueenMoves: getQueenMovesWasm,
  getQueenHitMoves: getQueenHitMovesWasm,
  getBishopMoves: getBishopMovesWasm,
  getBishopHitMoves: getBishopHitMovesWasm,
  getRookMoves: getRookMovesWasm,
  getRookHitMoves: getRookHitMovesWasm,
  generatePseudoMoves: generatePseudoMovesWasm,
  isCaptured: isCapturedWasm,
  perft: perftWasm,
  typeTest: typeTestWasm,
} = wasmModule.exports;

export const getMovedBoard = (move, board) => __getArray(getMovedBoardWasm(move, __newArray(Uint8Array_ID, board)));

export const generatePseudoMoves = (board) => __getArray(generatePseudoMovesWasm(__newArray(Uint8Array_ID, board)));

export const perft = (depth, board) => perftWasm(depth, __newArray(Uint8Array_ID, board));

export const isCaptured = (board, cellIndex, color) =>
  isCapturedWasm(__newArray(Uint8Array_ID, board), cellIndex, color);

export const getPawnMoves = (position, board, isWhite) =>
  __getArray(getPawnMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getPawnHitMovesNoPromotion = (position, board, isWhite) =>
  __getArray(getPawnHitMovesNoPromotionWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getKnightMoves = (position, board, isWhite) =>
  __getArray(getKnightMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getKnightHitMoves = (position, board, isWhite) =>
  __getArray(getKnightHitMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getKingMoves = (position, board) =>
  __getArray(getKingMovesWasm(position, __newArray(Uint8Array_ID, board)));

export const getKingHitMoves = (position, board) =>
  __getArray(getKingHitMovesWasm(position, __newArray(Uint8Array_ID, board)));

export const getQueenMoves = (position, board, isWhite) =>
  __getArray(getQueenMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getQueenHitMoves = (position, board, isWhite) =>
  __getArray(getQueenHitMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getBishopMoves = (position, board, isWhite) =>
  __getArray(getBishopMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getBishopHitMoves = (position, board, isWhite) =>
  __getArray(getBishopHitMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getRookMoves = (position, board, isWhite) =>
  __getArray(getRookMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getRookHitMoves = (position, board, isWhite) =>
  __getArray(getRookHitMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const typeTest = (position) => __getArray(typeTestWasm(position));

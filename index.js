import * as fs from 'fs';
import * as path from 'path';
import * as loader from '@assemblyscript/loader';

const imports = {
  /* imports go here */
};

const wasmModule = loader.instantiateSync(fs.readFileSync(path.resolve('build/optimized.wasm')), imports);
const {
  __newArray,
  __getArray,
  Int8Array_ID,
  getMovedBoard: getMovedBoardWasm,
  getPawnMoves: getPawnMovesWasm,
  getKnightMoves: getKnightMovesWasm,
  getKingMoves: getKingMovesWasm,
  getQueenMoves: getQueenMovesWasm,
  getBishopMoves: getBishopMovesWasm,
  getRookMoves: getRookMovesWasm,
  isCaptured: isCapturedWasm,
} = wasmModule.exports;

export const getMovedBoard = (move, board) => __getArray(getMovedBoardWasm(move, __newArray(Int8Array_ID, board)));

export const isCaptured = (board, cellIndex, color) =>
  isCapturedWasm(__newArray(Int8Array_ID, board), cellIndex, color);

export const getPawnMoves = (position, board, isWhite) =>
  __getArray(getPawnMovesWasm(position, __newArray(Int8Array_ID, board), isWhite));

export const getKnightMoves = (position, board, isWhite) =>
  __getArray(getKnightMovesWasm(position, __newArray(Int8Array_ID, board), isWhite));

export const getKingMoves = (position, board) =>
  __getArray(getKingMovesWasm(position, __newArray(Int8Array_ID, board)));

export const getQueenMoves = (position, board, isWhite) =>
  __getArray(getQueenMovesWasm(position, __newArray(Int8Array_ID, board), isWhite));

export const getBishopMoves = (position, board, isWhite) =>
  __getArray(getBishopMovesWasm(position, __newArray(Int8Array_ID, board), isWhite));

export const getRookMoves = (position, board, isWhite) =>
  __getArray(getRookMovesWasm(position, __newArray(Int8Array_ID, board), isWhite));

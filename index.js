import * as fs from 'fs';
import * as path from 'path';
import * as loader from '@assemblyscript/loader';

let wasmModule;

const imports = {
  /* imports go here */
  'console.log': (msgPtr) => {
    //     // at the time of call, wasmModule will be initialized
    console.log('WASM is talking', wasmModule.exports.getString(msgPtr));
  },
  // : {
  //   log
  // },
};

const source = fs.readFileSync(path.resolve('build/untouched.wasm'));

// wasmExample = loader.instantiateBuffer(source, imports);
wasmModule = loader.instantiateSync(source, imports);

const {
  __newArray,
  __getArray,
  Uint8Array_ID,
  getMovedBoard: getMovedBoardWasm,
  getPawnMoves: getPawnMovesWasm,
  getKnightMoves: getKnightMovesWasm,
  getKingMoves: getKingMovesWasm,
  getQueenMoves: getQueenMovesWasm,
  getBishopMoves: getBishopMovesWasm,
  getRookMoves: getRookMovesWasm,
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

export const getKnightMoves = (position, board, isWhite) =>
  __getArray(getKnightMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getKingMoves = (position, board) =>
  __getArray(getKingMovesWasm(position, __newArray(Uint8Array_ID, board)));

export const getQueenMoves = (position, board, isWhite) =>
  __getArray(getQueenMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getBishopMoves = (position, board, isWhite) =>
  __getArray(getBishopMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const getRookMoves = (position, board, isWhite) =>
  __getArray(getRookMovesWasm(position, __newArray(Uint8Array_ID, board), isWhite));

export const typeTest = (position) => __getArray(typeTestWasm(position));

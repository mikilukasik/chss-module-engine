/** src/assembly/index/Uint8Array_ID */
export declare const Uint8Array_ID: {
  /** @type `u32` */
  get value(): number
};
/**
 * src/assembly/getMovedBoard/getMovedBoard
 * @param move `u16`
 * @param board `~lib/typedarray/Uint8Array`
 * @returns `~lib/typedarray/Uint8Array`
 */
export declare function getMovedBoard(move: number, board: Uint8Array): Uint8Array;
/**
 * src/assembly/getPawnMoves/getPawnMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getPawnMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getKnightMoves/getKnightMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getKnightMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getKingMoves/getKingMoves
 * @param position `u8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getKingMoves(position: number, board: Uint8Array, color?: number): Array<number>;
/**
 * src/assembly/getQueenMoves/getQueenMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getQueenMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getBishopMoves/getBishopMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getBishopMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getRookMoves/getRookMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getRookMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/isCaptured/isCaptured
 * @param board `~lib/typedarray/Uint8Array`
 * @param cellIndex `i8`
 * @param color `u8`
 * @returns `bool`
 */
export declare function isCaptured(board: Uint8Array, cellIndex: number, color: number): boolean;
/**
 * src/assembly/generatePseudoMoves/generatePseudoMoves
 * @param board `~lib/typedarray/Uint8Array`
 * @returns `~lib/array/Array<u16>`
 */
export declare function generatePseudoMoves(board: Uint8Array): Array<number>;
/**
 * src/assembly/perft/perft
 * @param depth `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @returns `u32`
 */
export declare function perft(depth: number, board: Uint8Array): number;
/**
 * src/assembly/typeTest/typeTest
 * @param position `i8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function typeTest(position: number): Array<number>;
/**
 * src/assembly/generateLegalMoves/generateLegalMoves
 * @param board `~lib/typedarray/Uint8Array`
 * @returns `~lib/array/Array<u16>`
 */
export declare function generateLegalMoves(board: Uint8Array): Array<number>;

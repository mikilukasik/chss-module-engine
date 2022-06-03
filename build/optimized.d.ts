/** src/assembly/index/Int8Array_ID */
export declare const Int8Array_ID: {
  /** @type `u32` */
  get value(): number
};
/**
 * src/assembly/getMovedBoard/getMovedBoard
 * @param move `i32`
 * @param board `~lib/typedarray/Int8Array`
 * @returns `~lib/typedarray/Int8Array`
 */
export declare function getMovedBoard(move: number, board: Int8Array): Int8Array;
/**
 * src/assembly/getPawnMoves/getPawnMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Int8Array`
 * @param isWhite `bool`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getPawnMoves(position: number, board: Int8Array, isWhite: boolean): Array<number>;
/**
 * src/assembly/getKnightMoves/getKnightMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Int8Array`
 * @param color `i8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getKnightMoves(position: number, board: Int8Array, color: number): Array<number>;
/**
 * src/assembly/getKingMoves/getKingMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Int8Array`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getKingMoves(position: number, board: Int8Array): Array<number>;
/**
 * src/assembly/getQueenMoves/getQueenMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Int8Array`
 * @param color `i8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getQueenMoves(position: number, board: Int8Array, color: number): Array<number>;
/**
 * src/assembly/getBishopMoves/getBishopMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Int8Array`
 * @param color `i8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getBishopMoves(position: number, board: Int8Array, color: number): Array<number>;
/**
 * src/assembly/getRookMoves/getRookMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Int8Array`
 * @param color `i8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getRookMoves(position: number, board: Int8Array, color: number): Array<number>;
/**
 * src/assembly/isCaptured/isCaptured
 * @param board `~lib/typedarray/Int8Array`
 * @param cellIndex `i8`
 * @param color `i8`
 * @returns `bool`
 */
export declare function isCaptured(board: Int8Array, cellIndex: number, color: number): boolean;

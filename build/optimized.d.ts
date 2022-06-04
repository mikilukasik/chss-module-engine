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
 * src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getPawnHitMovesNoPromotion(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getKnightMoves/getKnightMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getKnightMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getKnightHitMoves/getKnightHitMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getKnightHitMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getKingMoves/getKingMoves
 * @param position `u8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getKingMoves(position: number, board: Uint8Array, color?: number): Array<number>;
/**
 * src/assembly/getKingHitMoves/getKingHitMoves
 * @param position `u8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getKingHitMoves(position: number, board: Uint8Array, color?: number): Array<number>;
/**
 * src/assembly/getQueenMoves/getQueenMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getQueenMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getQueenHitMoves/getQueenHitMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getQueenHitMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getBishopMoves/getBishopMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getBishopMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getBishopHitMoves/getBishopHitMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getBishopHitMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getRookMoves/getRookMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u16>`
 */
export declare function getRookMoves(position: number, board: Uint8Array, color: number): Array<number>;
/**
 * src/assembly/getRookHitMoves/getRookHitMoves
 * @param position `i8`
 * @param board `~lib/typedarray/Uint8Array`
 * @param color `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getRookHitMoves(position: number, board: Uint8Array, color: number): Array<number>;
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
 * @returns `~lib/array/Array<u16> | null`
 */
export declare function generatePseudoMoves(board: Uint8Array): Array<number> | null;
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
 * @returns `~lib/array/Array<u16> | null`
 */
export declare function generateLegalMoves(board: Uint8Array): Array<number> | null;
/**
 * src/assembly/getHitMovesNoPromotion/getHitMovesNoPromotion
 * @param board `~lib/typedarray/Uint8Array`
 * @param cellIndex `u8`
 * @returns `~lib/array/Array<u8>`
 */
export declare function getHitMovesNoPromotion(board: Uint8Array, cellIndex: number): Array<number>;
/**
 * src/assembly/getDefenderValues/getDefenderValues
 * @param board `~lib/typedarray/Uint8Array`
 * @param cellIndex `i8`
 * @param color `u8`
 * @returns `~lib/array/Array<f32>`
 */
export declare function getDefenderValues(board: Uint8Array, cellIndex: number, color: number): Array<number>;
/**
 * src/assembly/evaluateBoard/evaluateBoard
 * @param board `~lib/typedarray/Uint8Array`
 * @returns `f32`
 */
export declare function evaluateBoard(board: Uint8Array): number;

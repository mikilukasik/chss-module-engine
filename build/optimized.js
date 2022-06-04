async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    Uint8Array_ID: {
      // src/assembly/index/Uint8Array_ID: u32
      valueOf() { return this.value; },
      get value() {
        return exports.Uint8Array_ID.value >>> 0;
      }
    },
    getMovedBoard(move, board) {
      // src/assembly/getMovedBoard/getMovedBoard(u16, ~lib/typedarray/Uint8Array) => ~lib/typedarray/Uint8Array
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftTypedArray(Uint8Array, exports.getMovedBoard(move, board) >>> 0);
    },
    getPawnMoves(position, board, color) {
      // src/assembly/getPawnMoves/getPawnMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getPawnMoves(position, board, color) >>> 0);
    },
    getPawnHitMovesNoPromotion(position, board, color) {
      // src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getPawnHitMovesNoPromotion(position, board, color) >>> 0);
    },
    getKnightMoves(position, board, color) {
      // src/assembly/getKnightMoves/getKnightMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getKnightMoves(position, board, color) >>> 0);
    },
    getKnightHitMoves(position, board, color) {
      // src/assembly/getKnightHitMoves/getKnightHitMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getKnightHitMoves(position, board, color) >>> 0);
    },
    getKingMoves(position, board, color) {
      // src/assembly/getKingMoves/getKingMoves(u8, ~lib/typedarray/Uint8Array, u8?) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getKingMoves(position, board, color) >>> 0);
    },
    getKingHitMoves(position, board, color) {
      // src/assembly/getKingHitMoves/getKingHitMoves(u8, ~lib/typedarray/Uint8Array, u8?) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getKingHitMoves(position, board, color) >>> 0);
    },
    getQueenMoves(position, board, color) {
      // src/assembly/getQueenMoves/getQueenMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getQueenMoves(position, board, color) >>> 0);
    },
    getQueenHitMoves(position, board, color) {
      // src/assembly/getQueenHitMoves/getQueenHitMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getQueenHitMoves(position, board, color) >>> 0);
    },
    getBishopMoves(position, board, color) {
      // src/assembly/getBishopMoves/getBishopMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getBishopMoves(position, board, color) >>> 0);
    },
    getBishopHitMoves(position, board, color) {
      // src/assembly/getBishopHitMoves/getBishopHitMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getBishopHitMoves(position, board, color) >>> 0);
    },
    getRookMoves(position, board, color) {
      // src/assembly/getRookMoves/getRookMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getRookMoves(position, board, color) >>> 0);
    },
    getRookHitMoves(position, board, color) {
      // src/assembly/getRookHitMoves/getRookHitMoves(i8, ~lib/typedarray/Uint8Array, u8) => ~lib/array/Array<u16>
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.getRookHitMoves(position, board, color) >>> 0);
    },
    isCaptured(board, cellIndex, color) {
      // src/assembly/isCaptured/isCaptured(~lib/typedarray/Uint8Array, i8, u8) => bool
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return exports.isCaptured(board, cellIndex, color) != 0;
    },
    generatePseudoMoves(board) {
      // src/assembly/generatePseudoMoves/generatePseudoMoves(~lib/typedarray/Uint8Array) => ~lib/array/Array<u16> | null
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.generatePseudoMoves(board) >>> 0);
    },
    perft(depth, board) {
      // src/assembly/perft/perft(i8, ~lib/typedarray/Uint8Array) => u32
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return exports.perft(depth, board) >>> 0;
    },
    typeTest(position) {
      // src/assembly/typeTest/typeTest(i8) => ~lib/array/Array<u16>
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.typeTest(position) >>> 0);
    },
    generateLegalMoves(board) {
      // src/assembly/generateLegalMoves/generateLegalMoves(~lib/typedarray/Uint8Array) => ~lib/array/Array<u16> | null
      board = __lowerTypedArray(Uint8Array, 3, 0, board) || __notnull();
      return __liftArray(pointer => new Uint16Array(memory.buffer)[pointer >>> 1], 1, exports.generateLegalMoves(board) >>> 0);
    },
  }, exports);
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      memoryU32 = new Uint32Array(memory.buffer),
      dataStart = memoryU32[pointer + 4 >>> 2],
      length = memoryU32[pointer + 12 >>> 2],
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    const memoryU32 = new Uint32Array(memory.buffer);
    return new constructor(
      memory.buffer,
      memoryU32[pointer + 4 >>> 2],
      memoryU32[pointer + 8 >>> 2] / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 0)) >>> 0,
      header = exports.__new(12, id) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + 0 >>> 2] = buffer;
    memoryU32[header + 4 >>> 2] = buffer;
    memoryU32[header + 8 >>> 2] = length << align;
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  return adaptedExports;
}
export const {
  Uint8Array_ID,
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
  perft,
  typeTest,
  generateLegalMoves
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)) }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)) }
  })(), {
  }
))(new URL("optimized.wasm", import.meta.url));

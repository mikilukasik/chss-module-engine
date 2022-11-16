import instantiate from '../../../build/optimized.wasm';

let _wasmEngine;
const wasmEngineAwaiters = [];

const transformEngine = ({
  __new,
  __pin,
  __unpin,
  __setArgumentsLength,
  getMovedBoard: getMovedBoardWasm,
  minimax: minimaxWasm,
  evaluateBoard: evaluateBoardWasm,
  memory,
}) => {
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const memoryU32 = new Uint32Array(memory.buffer),
      dataStart = memoryU32[(pointer + 4) >>> 2],
      length = memoryU32[(pointer + 12) >>> 2],
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + ((i << align) >>> 0));
    return values;
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    const memoryU32 = new Uint32Array(memory.buffer);
    return new constructor(
      memory.buffer,
      memoryU32[(pointer + 4) >>> 2],
      memoryU32[(pointer + 8) >>> 2] / constructor.BYTES_PER_ELEMENT,
    ).slice();
  }
  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const length = values.length,
      buffer = __pin(__new(length << align, 0)) >>> 0,
      header = __new(12, id) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[(header + 0) >>> 2] = buffer;
    memoryU32[(header + 4) >>> 2] = buffer;
    memoryU32[(header + 8) >>> 2] = length << align;
    new constructor(memory.buffer, buffer, length).set(values);
    __unpin(buffer);
    return header;
  }

  return {
    getMovedBoard: (move, board) => {
      return __liftTypedArray(Uint8Array, getMovedBoardWasm(move, __lowerTypedArray(Uint8Array, 3, 0, board)) >>> 0);
    },
    minimax(board, depth, alpha, beta, valueToAdd) {
      __setArgumentsLength(arguments.length);
      return __liftArray(
        (pointer) => new Float32Array(memory.buffer)[pointer >>> 2],
        2,
        minimaxWasm(__lowerTypedArray(Uint8Array, 3, 0, board), depth, alpha, beta, valueToAdd) >>> 0,
      );
    },

    evaluateBoard(board, valueToAdd) {
      __setArgumentsLength(arguments.length);
      return __liftArray(
        (pointer) => new Float32Array(memory.buffer)[pointer >>> 2],
        2,
        evaluateBoardWasm(__lowerTypedArray(Uint8Array, 3, 0, board), valueToAdd) >>> 0,
      );
    },
  };
};

instantiate({
  global: self,
  env: {
    memory: new WebAssembly.Memory({ initial: 10, limit: 100 }),
    table: new WebAssembly.Table({ initial: 0, element: 'anyfunc' }),
    abort: console.warn,
  },
}).then((wm) => {
  const { instance } = wm;
  _wasmEngine = transformEngine(instance.exports);
  while (wasmEngineAwaiters.length) wasmEngineAwaiters.pop()(_wasmEngine);
});

export const getWasmEngine = () =>
  new Promise((r) => {
    if (_wasmEngine) return r(_wasmEngine);
    wasmEngineAwaiters.push(r);
  });

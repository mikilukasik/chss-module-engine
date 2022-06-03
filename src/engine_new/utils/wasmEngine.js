import instantiate from '../../../build/optimized.wasm';

let _wasmEngine;
const wasmEngineAwaiters = [];

const transformEngine = ({ __new, __pin, __unpin, getMovedBoard: getMovedBoardWasm, add, memory }) => {
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
      return __liftTypedArray(Int8Array, getMovedBoardWasm(move, __lowerTypedArray(Int8Array, 3, 0, board)) >>> 0);
    },
    add,
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
  console.log({ wm });
  _wasmEngine = transformEngine(instance.exports);
  while (wasmEngineAwaiters.length) wasmEngineAwaiters.pop()(_wasmEngine);
});

export const getWasmEngine = () =>
  new Promise((r) => {
    if (_wasmEngine) return r(_wasmEngine);
    wasmEngineAwaiters.push(r);
  });

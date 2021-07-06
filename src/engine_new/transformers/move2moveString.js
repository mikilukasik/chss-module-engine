import { cellIndex2cellStr } from "./cellIndex2cellStr"

export const move2moveString = (move) => `${cellIndex2cellStr(move >>> 10)}${cellIndex2cellStr(move & 63)}`;

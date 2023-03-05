import fs from 'fs';
import path from 'path';

class Semaphore {
  constructor(count) {
    this.count = count;
    this.waiting = [];
  }

  async acquire() {
    if (this.count > 0) {
      this.count--;
      return Promise.resolve();
    } else {
      return new Promise((resolve) => {
        this.waiting.push(resolve);
      });
    }
  }

  release() {
    this.count++;
    if (this.waiting.length > 0) {
      const resolve = this.waiting.shift();
      resolve();
    }
  }
}

const semaphore = new Semaphore(1);
const loadedDataCache = {};

export async function getSavedObject(folder, { asArray = false } = {}) {
  // console.log(`getSavedObject(folder): ${folder}`);
  /* */
  /*  Usage:
  
      const { proxyData } = await getSavedObject('path/to/saved_data');
      proxyData.newKey = { a: [4, { x: 5 }] };
      proxyData.newKey2 = 'hello world';
  */

  if (loadedDataCache[folder]) {
    // console.log(`Returning cached data for '${folder}'`);
    return loadedDataCache[folder].proxyData;
  }

  let savedData = null;
  try {
    savedData = await readData(folder, asArray);
  } catch (error) {
    console.error(`Error reading saved data from folder '${folder}':`, error);
  }

  const proxyData = new Proxy(savedData || (asArray ? [] : {}), {
    get(target, property, receiver) {
      return Reflect.get(target, property, receiver);
    },
    set(target, property, value, receiver) {
      if (typeof value !== 'object') {
        Reflect.set(target, property, value, receiver);
        saveData(folder, proxyData, asArray).then(() => {
          // console.log(`Saved data for '${property}' to '${folder}'`);
        });
        return true;
      }

      // recursion
      getSavedObject(`${folder}/${property}`, { asArray: Array.isArray(value) }).then((subObject) => {
        if (Array.isArray(value)) {
          value.forEach((subVal, i) => {
            if (subObject[i] !== subVal) subObject[i] = subVal;
          });

          return;
        }
        Object.keys(value).forEach((key) => {
          if (subObject[key] !== value[key]) subObject[key] = value[key];
        });
      });

      return true;
    },
  });

  loadedDataCache[folder] = { proxyData, methods: null };
  // console.log(`Returning data for '${folder}'`);
  return loadedDataCache[folder].proxyData;
}

async function readData(folder, asArray) {
  // console.log(`readData(folder): ${folder}`);

  const stats = await fs.promises.stat(folder).catch(() => null);
  if (stats && !stats.isDirectory()) {
    // console.log({ stats });
    throw new Error('savedObject was pointed to a file, not directory');
  }

  if (!stats) {
    await fs.promises.mkdir(folder, { recursive: true });
    await fs.promises.writeFile(`${folder}/__values__.json`, asArray ? '[]' : '{}');
  }

  const data = JSON.parse(await fs.promises.readFile(path.resolve(folder, '__values__.json'), 'utf-8'));
  const entries = await fs.promises.readdir(folder);

  for (const entry of entries) {
    const fullPath = path.resolve(folder, entry);

    if (entry === '__values__.json') {
      continue;
    }

    const stats = await fs.promises.stat(fullPath).catch(() => null);
    if (stats?.isDirectory()) {
      data[entry] = await getSavedObject(fullPath);
      continue;
    }

    throw new Error(`Mess in data folder, sound ${fullPath}`);
  }

  return data;
}

export async function saveData(folder, data, asArray) {
  // console.log(`saveData(folder): ${folder}`);
  await semaphore.acquire(); // acquire a permit from the semaphore

  const values = asArray ? [] : {};

  for (const [key, value] of Object.entries(data)) {
    if (typeof value !== 'object' || value === null) {
      values[key] = value;
    }
  }

  const json = JSON.stringify(values, null, 2);
  await fs.promises.writeFile(`${folder}/__values__.json`, json);
  // console.log(`Saved data to '${folder}/__values__.json'`);

  semaphore.release(); // release the permit back to the semaphore

  return values;
}

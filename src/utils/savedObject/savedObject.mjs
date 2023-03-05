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

const assignObject = (target, source) => {
  for (const [key, value] of Object.entries(source)) {
    if (typeof value === 'object' && value !== null) {
      target[key] = target[key] || Array.isArray(value) ? [] : {};
      assignObject(target[key], value);
    } else {
      target[key] = value;
    }
  }
};

const loadedDataCache = {};

export function getSavedObject(folder, { asArray = false, store: _store } = {}) {
  const semaphore = new Semaphore(1);

  // console.log(`getSavedObject(folder): ${folder}`);
  /* */
  /*  Usage:
  
      const { data: proxyData } = await getSavedObject('path/to/saved_data');
      data: proxyData.newKey = { a: [4, { x: 5 }] };
      data: proxyData.newKey2 = 'hello world';
  */

  if (loadedDataCache[folder]) {
    // console.log(`Returning cached data for '${folder}'`);
    return loadedDataCache[folder];
  }

  const saveData = async function (folder, data, asArray, noNeedForSemafor) {
    // console.log(`saveData(folder): ${folder}`);
    if (!noNeedForSemafor) await semaphore.acquire(); // acquire a permit from the semaphore

    const values = asArray ? [] : {};

    for (const [key, value] of Object.entries(data)) {
      if (typeof value !== 'object' || value === null) {
        values[key] = value;
      } else {
        await saveData(path.resolve(folder, key), value, Array.isArray(value), true);
      }
    }

    const stats = await fs.promises.stat(folder).catch(() => null);
    if (stats && !stats.isDirectory()) {
      throw new Error('savedObject was pointed to a file, not directory');
    }

    if (!stats) {
      await fs.promises.mkdir(folder, { recursive: true });
    }

    const json = JSON.stringify(values, null, 2);
    await fs.promises.writeFile(`${folder}/__values__.json`, json);
    // console.log(`Saved data to '${folder}/__values__.json'`);

    if (!noNeedForSemafor) semaphore.release(); // release the permit back to the semaphore

    return values;
  };

  const saveLatestData = takeLatest(saveData);

  let store = asArray ? [] : {};
  if (_store) {
    store = _store;
    saveData(folder, store, asArray);
  }
  // let savedData = null;
  // try {
  //   savedData = await readData(folder, asArray);
  // } catch (error) {
  //   console.error(`Error reading saved data from folder '${folder}':`, error);
  // }

  // const store ;

  const proxyData = new Proxy(store, {
    get(target, property, receiver) {
      // return target[property]; //, receiver);
      return Reflect.get(target, property, receiver);
    },
    set(target, property, value, receiver) {
      let val = value;

      if (typeof value === 'object' && value !== null) {
        const asArray = Array.isArray(value);
        val = getSavedObject(`${folder}/${property}`, {
          asArray,
          store: asArray ? value.slice() : { ...value },
        }).data;

        Reflect.set(target, property, val, receiver);
        saveData(folder, proxyData, asArray);
        return true;
      }
      // console.log(val);

      Reflect.set(target, property, val, receiver);
      saveLatestData(folder, proxyData, asArray);
      return true;
    },
  });

  const loadData = async () => {
    console.log('loadData started in ', folder);
    const savedData = await readData(folder, asArray);
    assignObject(proxyData, savedData);
    console.log('loadData finished in ', folder);
  };

  const methods = {
    loadData,
  };

  loadedDataCache[folder] = { data: proxyData, methods };
  // console.log(`Returning data for '${folder}'`);
  return loadedDataCache[folder];
}

async function readData(folder, asArray) {
  let data;
  try {
    data = JSON.parse(await fs.promises.readFile(path.resolve(folder, '__values__.json'), 'utf-8'));
  } catch (e) {
    await fs.promises.mkdir(folder, { recursive: true });
    await fs.promises.writeFile(`${folder}/__values__.json`, asArray ? '[]' : '{}');
    data = asArray ? [] : {};
  }

  const entries = await fs.promises.readdir(folder);

  for (const entry of entries) {
    const fullPath = path.resolve(folder, entry);

    if (entry === '__values__.json') {
      continue;
    }

    const stats = await fs.promises.stat(fullPath).catch(() => null);
    if (stats?.isDirectory()) {
      const subObject = await readData(fullPath);
      // await subMethods.loadData();
      data[entry] = subObject;
      continue;
    }

    throw new Error(`Mess in data folder, found ${fullPath}`);
  }

  return data;
}

const takeLatest = (fn) => {
  let timeoutId;
  return (...args) => {
    clearTimeout(timeoutId);
    timeoutId = setTimeout(() => {
      fn(...args);
    });
  };
};

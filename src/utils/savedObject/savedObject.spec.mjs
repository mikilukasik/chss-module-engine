/* eslint-disable no-undef */
import { getSavedObject, saveData } from './savedObject.mjs';
import fs from 'fs';
import path from 'path';

describe('getSavedObject', () => {
  afterEach(async () => {
    // Delete any temporary folders created during testing
    const tempFolders = [path.resolve(__dirname, '__test_data__')];
    for (const folder of tempFolders) {
      try {
        await fs.promises.rmdir(folder, { recursive: true });
      } catch (error) {
        // Ignore errors if the folder doesn't exist
        if (error.code !== 'ENOENT') {
          console.error(`Error deleting test folder: ${error}`);
        }
      }
    }
  });

  // Test case to test whether an empty object and array are created
  test('should create an empty object when no file exists', async () => {
    const folderPath = path.resolve(__dirname, '__test_data__/empty_obj');
    const obj = await getSavedObject(folderPath);

    expect(obj).toEqual({});
  });

  test('should create an empty array when no file exists', async () => {
    const folderPath = path.resolve(__dirname, '__test_data__/empty_arr');
    const obj = await getSavedObject(folderPath, { asArray: true });

    expect(obj).toEqual([]);
  });

  // Test case to test whether a single property is correctly saved
  test('should save a single property correctly to a file', async () => {
    const folderPath = path.resolve(__dirname, '__test_data__/property');
    await fs.promises.mkdir(folderPath, { recursive: true });

    const obj = { key: 'value' };
    await saveData(folderPath, obj, false);

    const data = JSON.parse(await fs.promises.readFile(`${folderPath}/__values__.json`, 'utf-8'));
    expect(data).toEqual(obj);
  });

  // Test case to test whether an array is correctly saved
  test('should save an array correctly to a file', async () => {
    const folderPath = path.resolve(__dirname, '__test_data__/array');

    const obj = await getSavedObject(folderPath, { asArray: true });
    obj.push('value1', 'value2');
    await new Promise((r) => setTimeout(r, 500));

    const data = JSON.parse(await fs.promises.readFile(`${folderPath}/__values__.json`, 'utf-8'));
    expect(data).toEqual(['value1', 'value2']);
  });

  // Test case to test whether a nested array or object is correctly saved
  test('should save a nested data correctly to a file', async () => {
    const folderPath = path.resolve(__dirname, '__test_data__/nestedArray');
    const obj = await getSavedObject(folderPath);

    obj.test = { t: [{ key: ['value1', 'value2'] }] };
    await new Promise((r) => setTimeout(r, 500));

    const data = JSON.parse(await fs.promises.readFile(`${folderPath}/test/t/0/key/__values__.json`, 'utf-8'));
    expect(data).toEqual(['value1', 'value2']);
  });

  // Test case to test whether renaming of the folder works
  test('should read the saved data from renamed folder', async () => {
    const folderPath = path.resolve(__dirname, '__test_data__/rename');
    const renamedFolderPath = path.resolve(__dirname, '__test_data__/renameNew');
    const obj = await getSavedObject(folderPath);
    obj.key = 'val';

    await new Promise((r) => setTimeout(r, 300));
    await fs.promises.rename(folderPath, renamedFolderPath);
    await new Promise((r) => setTimeout(r, 300));

    const newObj = await getSavedObject(renamedFolderPath);
    expect(newObj).toEqual({ key: 'val' });
  });
});

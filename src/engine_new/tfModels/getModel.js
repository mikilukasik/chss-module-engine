import * as tf from '@tensorflow/tfjs';

import { setWasmPaths } from '@tensorflow/tfjs-backend-wasm';

let hostname = '';
if (typeof location !== 'undefined') hostname = location.hostname;
if (typeof window !== 'undefined') hostname = window.location.hostname;

// setWasmPaths('https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-backend-wasm/dist/');
setWasmPaths('/assets/wasm_bin/');
const models = {};
const modelsLoading = {};
const getModelResolvers = {};

const loadTransform = async (modelName) => {
  const transformAsString = await (await fetch(`http://${hostname}:3300/models/${modelName}/transform.js`)).text();
  return eval(transformAsString);
};

const loadConstants = async (modelName) => {
  return await (await fetch(`http://${hostname}:3300/models/${modelName}/constants.json`)).json();
};

const loadTfModel = async (modelName) => {
  console.log(`Loading model ${modelName}`);
  return tf.loadLayersModel(`http://${hostname}:3300/models/${modelName}/model.json`);
};

const loadModel = async (name) => {
  const [model, transform, constants] = await Promise.all([
    loadTfModel(name),
    loadTransform(name),
    loadConstants(name),
  ]).catch(console.error);
  models[name] = { model, transform, constants };
  console.log(`tf model ${name} loaded`);

  while (getModelResolvers[name].length) getModelResolvers[name].pop()(models[name]);
};

export const getModel = (name) =>
  new Promise((r) => {
    if (models[name]) return r(models[name]);
    getModelResolvers[name] = (getModelResolvers[name] || []).concat(r);

    if (!modelsLoading[name]) {
      modelsLoading[name] = true;
      loadModel(name);
    }
  });

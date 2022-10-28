import * as tf from '@tensorflow/tfjs';
import * as tf_wasm from '@tensorflow/tfjs-backend-wasm';
import { setWasmPaths } from '@tensorflow/tfjs-backend-wasm';

// setWasmPaths('https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-backend-wasm/dist/');
setWasmPaths('/assets/wasm_bin/');

// import { moveInBoard } from '../../chss-module-engine/src/engine/engine';
// tf.setBackend('cpu');

const models = {};
const modelsLoading = {};
const getModelResolvers = {};

const loadModel = async (name) => {
  let loader;
  eval(await (await fetch(`http://localhost:3300/models/${name}/loader.js`)).text());

  const { predict } = await loader({
    tf,
    modelUrl: `http://localhost:3300/models/${name}/model.json`,
  });

  models[name] = { predict };
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

export const getPrediction = async ({ game, modelName }) => {
  const { predict } = await getModel(modelName);
  return predict({ game });
};

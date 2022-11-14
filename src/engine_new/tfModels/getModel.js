let hostname = '';
if (typeof location !== 'undefined') hostname = location.hostname;
if (typeof window !== 'undefined') hostname = window.location.hostname;

const models = {};
const modelsLoading = {};
const getModelResolvers = {};

const loadTransform = async (modelName) => {
  const transformAsString = await (await fetch(`http://${hostname}:3300/models/${modelName}/transform.js`)).text();
  return eval(`(() => {${transformAsString.replace('module.exports =', 'return ')}})()`);
};

const loadConstants = async (modelName) => {
  return await (await fetch(`http://${hostname}:3300/models/${modelName}/constants.json`)).json();
};

const loadTfModel = async (modelName, tf) => {
  console.log(`Loading model ${modelName}`);
  return tf.loadLayersModel(`http://${hostname}:3300/models/${modelName}/model.json`);
};

const loadModel = async (name, tf) => {
  const [model, transform, constants] = await Promise.all([
    loadTfModel(name, tf),
    loadTransform(name),
    loadConstants(name),
  ]).catch(console.error);
  models[name] = { model, transform, constants };
  console.log(`tf model ${name} loaded`);

  while (getModelResolvers[name].length) getModelResolvers[name].pop()(models[name]);
};

export const getModel = (name, tf) =>
  new Promise((r) => {
    if (models[name]) return r(models[name]);
    getModelResolvers[name] = (getModelResolvers[name] || []).concat(r);

    if (!modelsLoading[name]) {
      modelsLoading[name] = true;
      loadModel(name, tf);
    }
  });

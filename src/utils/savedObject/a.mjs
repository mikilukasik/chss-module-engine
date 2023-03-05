import { getSavedObject } from './savedObject.mjs';

(async () => {
  const so = await getSavedObject('./puki');

  // so.a = [1, 2, 'puki'];
  // so.b = [5, 6, { a: 1, b: 2, c: [1, 2, 7, 8, { u: [[[2, 3, { a: 'aa' }]]] }] }];
  // so.c = {};
  // so.d = [];

  // await new Promise((r) => setTimeout(r, 3000));

  console.log(JSON.stringify(so, null, 2));
})();

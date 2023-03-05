export default {
  testEnvironment: 'node',
  transform: {
    '^.+\\.m?js$': 'babel-jest',
  },

  // testMatch: ['**/__tests__/**/*.[jt]s?(x)', '**/?(*.)+(spec|test).mjs'],
  testMatch: ['**/*.spec.mjs'],

  globals: {
    'ts-jest': {
      useESM: true,
    },
  },
};

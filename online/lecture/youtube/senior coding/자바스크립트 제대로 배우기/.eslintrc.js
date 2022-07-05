module.exports = {
  env: {
    browser: true,
    es2021: true,
    node: true,
  },
  extends: [
    'eslint:recommended',
    'airbnb',
    'prettier',
    'plugin:react/recommended',
  ],
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  plugins: ['react', 'prettier'],
  rules: {
    'no-unused-vars': 'warn',
    'prettier/prettier': ['error', { singleQuote: true }],
    'no-console': 'off',
    'func-names': 'off',
    'object-shorthand': 'off',
    'class-methods-use-this': 'off',
  },
};

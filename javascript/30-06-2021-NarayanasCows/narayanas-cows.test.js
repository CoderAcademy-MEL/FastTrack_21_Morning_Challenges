const { cowCount } = require('./narayanas-cows');

describe('cowCount', () => {
  test.each([
    [0, 1],
    [3, 2],
    [5, 4],
    [10, 28],
    [20, 1278],
  ])('After %i years we should have %i cow(s).', (n, expected) => {
    expect(cowCount(n)).toBe(expected);
  });
});
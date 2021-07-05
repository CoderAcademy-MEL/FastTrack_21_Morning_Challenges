const { tulipValue } = require('./tulipomania');

describe('tulipValue', () => {
  test.each([
    [1, 1],
    [2, 2],
    [15, 7],
    [100, 76],
    [1000, 914],
    [1636, 1526],
    [737300, 734876],
    [20120504, 20107820],
  ])('After %i days the value should be %i', (days, expected) => {
    expect(tulipValue(days)).toBe(expected);
  });
});
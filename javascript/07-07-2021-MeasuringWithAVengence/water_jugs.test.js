const { canMeasure } = require('./water_jugs');

describe('canMeasure', () => {
  describe('Basic Case', () => {
    test.each([
      [3, 5, 4, true],
      [5, 8, 3, true],
      [6, 10, 5, false],
      [20, 10, 15, false],
    ])('Jugs %i and %i liters can measure %i litres', (a, b, c, expected) => {
      expect(canMeasure(a, b, c)).toBe(expected);
    });
  });

  describe('Edge Case', () => {
    test('Should not be able to measure 6 litres with a 3 and 5 litre jug', () => {
      expect(canMeasure(3, 5, 6)).toBe(false);
    });

    test('Should be able to measure 1 litre with a 5 and 8 litre jug', () => {
      expect(canMeasure(5, 8, 1)).toBe(true);
    });

    test('Should be able to measure 0 litres with any jugs', () => {
      expect(canMeasure(6, 10, 0)).toBe(true);
    });

    test('Should not be able to measure more than jugs can hold', () => {
      expect(canMeasure(10, 20, 100)).toBe(false);
    });
  });

  describe('Larger Jugs', () => {
    test.each([
      [90, 358, 186, true],
      [776, 251, 492, true],
      [276, 529, 357, false],
      [987, 81, 644, false],
    ])('Jugs %i and %i litres can measure %i litres', (a, b, c, expected) => {
      expect(canMeasure(a, b, c)).toBe(expected);
    });
  });
});
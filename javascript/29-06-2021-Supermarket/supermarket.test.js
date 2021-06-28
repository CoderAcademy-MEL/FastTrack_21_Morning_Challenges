const queueTime = require('./supermarket').queueTime;

describe('queueTime', function () {
  describe('Should return the correct queue time', function () {
    test('Should return 10 with [1,2,3,4] and 1 till', function () {
      expect(queueTime([1, 2, 3, 4], 1)).toBe(10);
    });
    test('Should return 9 with [2,2,3,3,4,4] and 2 tills', function () {
      expect(queueTime([2, 2, 3, 3, 4, 4], 2)).toBe(9);
    });
    test('Should return 12 with [1,2,3,4,5,6] and 2 tills', function () {
      expect(queueTime([1, 2, 3, 4, 5, 6], 2)).toBe(12);
    });
    test('Should return 5 with [2,1,4,2,3,1] and 3 tills', function () {
      expect(queueTime([2, 1, 4, 2, 3, 1], 3)).toBe(5);
    });
    test('Should return 8 with [1,3,1,2,5,1] and 2 tills', function () {
      expect(queueTime([1,3,1,2,5,1], 2)).toBe(8);
    });

  });
  describe('Should return 0 if there are no customers', function () {
    test('Should return 0 if there are no customers and 1 till', function () {
      expect(queueTime([], 1)).toBe(0);
    });
    test('Should return 0 if there are no customers and 5 tills', function () {
      expect(queueTime([], 5)).toBe(0);
    });

  });
  describe('Should return the correct queue time if tills is greater than customers', function () {
    test('Should return the largest value - 5 - with [1,2,3,4,5] and 100 tills', function () {
      expect(queueTime([1, 2, 3, 4, 5], 100)).toBe(5);
    });
    test('Should return the largest value - 5 - with [1,2,3,4,5] and 6 tills', function () {
      expect(queueTime([1, 2, 3, 4, 5], 6)).toBe(5);
    });

  });
});
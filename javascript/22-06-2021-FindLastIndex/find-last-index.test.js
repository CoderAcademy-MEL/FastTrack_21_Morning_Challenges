const findLastIndex = require('./find-last-index').findLastIndex;

describe('Find Last Index', () => {
  describe('Should find last index when item exists', function () {
    it('finds the last index when item there multiple times', () => {
      const objects = [{
          a: 0,
          b: 0
        },
        {
          a: 1,
          b: 1
        },
        {
          a: 2,
          b: 2
        },
        {
          a: 0,
          b: 0
        }
      ];
      const result = findLastIndex(objects, {
        a: 0
      });
      expect(result).toBe(3);
    });

    it('finds last index when item there once', function () {
      const objects = [{
        one: "1",
        two: "2",
        three: "3"
      }];
      expect(findLastIndex(objects, {
        one: "1"
      })).toBe(0);
    });
  });

  it('should return -1 if item not found', function () {
    const objects = [{
      one: "1",
      two: "2",
      three: "3"
    }]
    expect(findLastIndex(objects, {
      four: "4"
    })).toBe(-1);
  });
});
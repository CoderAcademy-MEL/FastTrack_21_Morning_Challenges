## Last Index Challenge

Complete the function findLastIndex which takes an array and an object  - the parameter is called needle, like in a haystack - 
returning the index closest to the end where the predicate truth test passes. Note that needle is an object.

What if the object is not found in the array at all? In that case return -1, like built-in array methods that return -1 when an index isn't found.

Example:

	const users = [
	    {'id': 1, 'name': 'Bob', 'last': 'Brown'},
	    {'id': 2, 'name': 'Ted', 'last': 'White'},
	    {'id': 3, 'name': 'Matthew', 'last': 'McConaughey'},
	    {'id': 4, 'name': 'Kanye', 'last': 'West'}
	];


	findLastIndex(users, {
	  name: 'Kanye'
	});
	=> 3




Tests:

```js
const findLastIndex = require('/home/lastIndex').findLastIndex;

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
```
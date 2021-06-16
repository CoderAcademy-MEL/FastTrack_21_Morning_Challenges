const vowels = require('./vowels').vowels;

describe('vowels', function () {
  test('Should return the vowels from a string', function () {
    expect(vowels("The quick brown fox")).toEqual(["e", "u", "i", "o", "o"]);
    expect(vowels("Hello World")).toEqual(["e", "o", "o"]);
  })
  test('Test vowels casing', function () {
    expect(vowels("cAse tEst")).toEqual(["A", "e", "E"]);
  })
})
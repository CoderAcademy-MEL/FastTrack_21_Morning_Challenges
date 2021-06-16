## Vowels

Write a method that will take a string and
return an array of vowels used in that string.

Example:
vowels("The quick brown fox") should return ["e","u","i","o","o"]
vowels("Hello WOrld") should return ["e","o","O"]

Tests:

const vowels = require('/home/vowels').vowels;

describe('vowels', function () {
  test('Should return the vowels from a string', function () {
    expect(vowels("The quick brown fox")).toEqual(["e", "u", "i", "o", "o"]);
    expect(vowels("Hello World")).toEqual(["e", "o", "o"]);
  })
  test('Test vowels casing', function () {
    expect(vowels("cAse tEst")).toEqual(["A", "e", "E"]);
  })
})

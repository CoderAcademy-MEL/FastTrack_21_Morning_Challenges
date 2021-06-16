## Common characters

Write code which will return the common characters found in two different strings. Only return one copy of each common character. Character case should be ignored (your solution should be case-insensitive).

Examples:
commonCharacters("efg", "feg") => "efg"
commonCharacters("We are both dragon energy", "I am God's vessel") => "eaodg"
commonCharacters("Alright alright alright", "") => ""

Tests:

const commonCharacters = require('/home/commonCharacters').commonCharacters;

describe('Common Characters', () => {
  it('returns commons characters ignoring case', () => {
    expect(commonCharacters('Abc', 'abc')).toBe('abc');
  });

  it('returns common characters', () => {
    expect(commonCharacters("What is love?", "Baby don't hurt me")).toBe('hatoe');
  });

  it('returns common characters', () => {
    expect(commonCharacters('Riding on a buffalo makes me more approachable', 'so what')).toBe('oash');
  });

  it('returns empty string', () => {
    expect(commonCharacters('', 'No more')).toBe('');
  });

  it('returns empty string', () => {
    expect(commonCharacters('No more', '')).toBe('');
  });

  it('returns empty string', () => {
    expect(commonCharacters('', '')).toBe('');
  });
});

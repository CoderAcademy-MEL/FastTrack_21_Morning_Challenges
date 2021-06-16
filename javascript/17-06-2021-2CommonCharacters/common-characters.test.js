const commonCharacters = require('./common-characters').commonCharacters;

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
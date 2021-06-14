const multiplyValue = require('./multiply-value').multiplyValue;

describe('Multiply tests', () => {
  it('Should return a mathematical product when both are parameters are numbers', () => {
    expect(multiplyValue(9, 2)).toBe(18);
    expect(multiplyValue(9.5, 2.1)).toBe(19.95);
  });
  it('Should duplicate string when the value is a string', () => {
    expect(multiplyValue("[alright]", 3)).toBe("[alright][alright][alright]");
  });
  it('Should return null when the first parameter is not a number or string', () => {
    expect(multiplyValue([1, 2, 4], 3)).toBe(null);
  });
  it('Should return null when the second parameter is not a number', () => {
    expect(multiplyValue(4, "[kanye west]")).toBe(null);
    expect(multiplyValue(2, "taylor swift")).toBe(null);
    expect(multiplyValue("actors", {
      a: "matthew mcconaughey"
    })).toBe(null);
  });
});
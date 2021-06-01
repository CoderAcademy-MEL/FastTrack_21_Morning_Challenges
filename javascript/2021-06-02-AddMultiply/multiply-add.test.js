const {add, multiply} = require('./multiply-add');

test('Add: Adds together two positive numbers', () => {
    expect(add(5,7)).toEqual(12);
	expect(add(455,722)).toEqual(1177);
});

test('Add: Adds together mixed numbers', () => {
    expect(add(5,-7)).toEqual(-2);
	expect(add(-455,455)).toEqual(0);
});

test('Multiply: Multiplies together positive numbers', () => {
    expect(multiply(5,7)).toEqual(35);
	expect(multiply(455,722)).toEqual(328510);
});

test('Multiply: Multiplies together mixed numbers', () => {
    expect(multiply(5,-7)).toEqual(-35);
	expect(multiply(-455,1)).toEqual(-455);
});
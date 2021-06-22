## Atomic Blonde Challenge

A number is an atomic blonde number if the sum and product of its digits are equal. Write a program to check if a number is an atomic blonde number or not. 

E.g. atomicBlonde(123), should return true (as 1 + 2 + 3 equals 6, as does 1 * 2 * 3)

E.g. atomicBlonde(23), should return false (as 2 + 3 equals 5, whereas  2 * 3 equals 6)

Tests:

```js
const {atomicBlonde} = require('/home/atomicBlonde');

test('returns true for an atomic blonde number', () => {
    expect(atomicBlonde(123)).toEqual(true);
    expect(atomicBlonde(22)).toEqual(true);
});

test('returns false for a non-atomic blonde number', () => {
    expect(atomicBlonde(23)).toEqual(false);
    expect(atomicBlonde(990)).toEqual(false);
});

test('handles the number 0', () => {
    expect(atomicBlonde(0)).toEqual(true);
});
```
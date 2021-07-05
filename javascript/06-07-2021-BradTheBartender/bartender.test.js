const {maximumCocktails} = require('./bartender.js');

test('Returns maximum number of cocktails for basic recipes', () => {
    let martiniRecipe = {gin: 50, vermouth: 10, olives: 3}
    let negroniRecipe = {gin:25, vermouth: 25, campari: 25}
    let barStock = {gin: 2250, vermouth: 2250, olives: 60, campari: 1400 }
    expect(maximumCocktails(martiniRecipe, barStock)).toEqual(20);
	expect(maximumCocktails(negroniRecipe, barStock)).toEqual(56);
});

test('Returns correct minimum on objects with different orders', () => {
    let oldFashionedRecipe = {whisky: 60, sugarCube: 1, bitters: 5}
    let barStock = {sugarCube: 2, bitters: 20, whisky: 1000 }
    expect(maximumCocktails(oldFashionedRecipe, barStock)).toEqual(2);
});

test('Returns 0 on missing ingredients', () => {
    let martiniRecipe = {gin: 50, vermouth: 10, olives: 3}
    let negroniRecipe = {gin:25, vermouth: 25, campari: 25}
    let barStock = {gin: 2250, vermouth: 2250 }
    expect(maximumCocktails(martiniRecipe, barStock)).toEqual(0);
	expect(maximumCocktails(negroniRecipe, barStock)).toEqual(0);
});

test('Returns 0 on insufficent ingredients', () => {
    let martiniRecipe = {gin: 50, vermouth: 10, olives: 3}
    let negroniRecipe = {gin:25, vermouth: 25, campari: 25}
    let barStock = {gin: 2250, vermouth: 2250, olives: 2, campari: 20 }
    expect(maximumCocktails(martiniRecipe, barStock)).toEqual(0);
	expect(maximumCocktails(negroniRecipe, barStock)).toEqual(0);
});
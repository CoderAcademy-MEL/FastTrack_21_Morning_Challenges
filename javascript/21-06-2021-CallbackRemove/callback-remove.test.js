const {remove, removerFunction} = require('./callback-remove.js');

describe('Does not remove anything if nothing starts with t',() => {
	it('Does not remove anything from ["cat", "dog"]', () => {
		let items = ["cat", "dog"];
		expect(remove(items, removerFunction)).toEqual([]);
		expect(items).toEqual(["cat", "dog"]);
	});
	it('Does not remove anything from []', () => {
		let	items = [];
		expect(remove(items,removerFunction)).toEqual([]);
		expect(items).toEqual([]);
	});
	it('Does not remove anything from ["one", "four"]', () => {
		let items = ["one", "four"];
		expect(remove(items, removerFunction)).toEqual([]);
		expect(items).toEqual(["one", "four"]);
	});
});

describe('Removes strings that start with t or T', () => {
	it('Removes toad from ["cat", "dog", "toad"]', () => {
		let items = ["cat", "dog", "toad"];
		expect(remove(items, removerFunction)).toEqual(["toad"]);
		expect(items).toEqual(["cat", "dog"]);
	});
	it('Removes Toad from ["cat", "dog", "Toad"]', () => {
		let items = ["cat", "dog", "Toad"];
		expect(remove(items, removerFunction)).toEqual(["Toad"]);
		expect(items).toEqual(["cat", "dog"]);
	});
})
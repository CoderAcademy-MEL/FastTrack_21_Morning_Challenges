const {exesAndOhs} = require("./exes-and-ohs.js");

describe("Returns true when same number of xs and os", () => {
	it("Returns true when empty string", () => {
   		expect(exesAndOhs("")).toEqual(true);
	});
	it("Returns true when 1 x and 1 o", () => {
   		expect(exesAndOhs("xo")).toEqual(true);
	});
	it("Returns true when multiple x's and o's", () => {
   		expect(exesAndOhs("xxoo")).toEqual(true);
	});
	it("Returns true when multiple x's and o's in different order", () => {
   		expect(exesAndOhs("xxooxoxo")).toEqual(true);
	});
	it("Returns true when different cases", () => {
   		expect(exesAndOhs("xxoOxoXo")).toEqual(true);
	});
});

describe("Returns false when different number of xs and os", () => {
	it("Returns false when more x's than o's", () => {
		expect(exesAndOhs("xxo")).toEqual(false);
	});
});
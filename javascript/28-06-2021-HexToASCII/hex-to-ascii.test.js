const hexStringToAscii = require('./hex-to-ascii').hexStringToAscii

describe ("Should return the ascii string", () => {
	it("for hello world", () => {
		expect(hexStringToAscii("68 65 6c 6c 6f 20 77 6f 72 6c 64")).toBe("hello world");
	});
	it("for Foo! Bar!", () => {
		expect(hexStringToAscii("46 6f 6f 21 20 42 61 72 21")).toBe("Foo! Bar!")
	});
});
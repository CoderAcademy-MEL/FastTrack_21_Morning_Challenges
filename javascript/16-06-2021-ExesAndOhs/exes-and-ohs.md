# Exes and Ohs

This is a great question for interview prep, so let's not google it. Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!


Write a function that will take a string as an argument. The method will check this string, and count the amount of 'x's and 'o's. It should return true if the amount of 'x's and 'o's are the same, and should return false if they are different. It should also be case insensitive.

E.g. exesAndOhs("ooxx") should return true

E.g. exesAndOhs("oOxXxoX") should return false

The tests:

const {exesAndOhs} = require("/home/answer.js");

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

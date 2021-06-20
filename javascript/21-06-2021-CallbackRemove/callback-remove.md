## Callback Remove

Create a function called remove that will take two arguments, an array and a function. 

remove(array, callback)


remove should remove all elements from array for which the callback function returns truthy (and mutate the original array). The remove function should return the removed elements in an array, and mutate the original array (removing the items that are identified by the callback function).

The callback function is called removerFunction and is invoked with one argument:

removerFunction(value)


removerFunction should return true when the value begins with the letter 't' or the letter 'T'. Otherwise it should return false.

Example:    

let people = ["tanya", "sue", "john", "garret"];
let removed = remove(people, removerFunction) ; // should remove "tanya" from people and return it in an array
console.log(people);  // should log: ["sue", "john", "garret"]
console.log(removed); // should log: ["tanya"]




Tests:

const {remove, removerFunction} = require('/home/remove.js');

describe('Does not remove anything if nothing starts with t',() => {
    it('Does not remove anything from ["cat", "dog"]', () => {
        let items = ["cat", "dog"];
        expect(remove(items, removerFunction)).toEqual([]);
        expect(items).toEqual(["cat", "dog"]);
    });
    it('Does not remove anything from []', () => {
        let    items = [];
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

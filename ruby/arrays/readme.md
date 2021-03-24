# Arrays

We haven't covered all of these methods in class but they are worth discovering as they will make your life a lot easier when we get to rails.

Have a look in inventor.rb to see what the attributes of each inventor are. Remember you be working with an array that is accessed by an index and a class who attributes are accessed with a `.` 

Have a look through the documentation if you get stuck. There are also automated tests, you can run them with `rspec array_spec.rb`

- [Ruby Array Docs](https://ruby-doc.org/core-2.7.2/Array.html)
- [Ruby Enumerable Docs](https://ruby-doc.org/core-2.7.2/Enumerable.html)


## Hints below

**first and last:** try using the `.map` method, you will need to add the two string names together with a space. If you wanted to be fancy, you could add a method to the class `full_name` to create the name for you [Docs](https://ruby-doc.org/core-2.7.2/Array.html#method-i-map)

**born_before_1800:** research the `.select` or `.reject` methods, they take a block and use a Boolean statement to determine whether to add the element to the new array or not. [Docs](https://ruby-doc.org/core-2.7.2/Array.html#method-i-select)

**total_age:** you can use a counter and a `.each` loop, if you would like to go further research the `.reduce` method, you will need a block and to research default values. [Docs](https://ruby-doc.org/core-2.7.2/Enumerable.html#method-i-reduce)

**long_names:** same as born_before_1800 use a `.select` or `.reject` method and a block. [Docs](https://ruby-doc.org/core-2.7.2/Array.html#method-i-reject)

**last_name_sort:** research `.sort_by` it allows you to sort an array of objects based on an attribute. [Docs](https://ruby-doc.org/core-2.7.2/Enumerable.html#method-i-sort_by)

**find_galilei:** have a look at how `.index` works, it can also take a block [Docs](https://ruby-doc.org/core-2.7.2/Array.html#method-i-index)


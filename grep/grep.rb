array = %w[foo bar baz]

p array.grep(/^ba/)
# ["bar", "baz"]

# grep with a Regexp
# you can easily match strings witha Regesp pattern

# string_collection.grep(/^pattern/)

# Module.constants.grep(/RUBY/)

# Array.instance_methods.grep(/gr/)

# grep with a Range

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p numbers.grep(3..5)
# [3, 4, 5]

# grep with class name Constant
all_sort_of_things = [1, 2, 'apple', 3, { foo: 4 }, 'banana', nil]

p all_sort_of_things.grep(Hash)
# [{:foo=>4}]

p all_sort_of_things.grep(String)
# ["apple", "banana"]

# grep with any object
# since the === method is implemented on a ruby Object, you can pass descendant of this class to the grep method. In the Object class the === method behaves the same as ==, its up to descending class to implement a different meaning btw the two

all_sort_of_things = [1, 2, 'apple', 3, { foo: 4 }, 'banana', nil]

p all_sort_of_things.grep('apple')
# ["apple"]

p all_sort_of_things.grep(3.0)
# [3]

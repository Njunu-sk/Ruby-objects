# a function that accepts an array of 10 int(0..9) and returns a string in form of a phone number

def create_phone_number(numbers)
  "(#{numbers.slice(0, 3).join('')}) #{numbers.slice(3, 3).join('')}-#{numbers.slice(6, 4).join('')}"
end

p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

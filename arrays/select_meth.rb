# the "select" method iterates over an array and returns a new array that includes any items that return true to the expression provided.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers.select { |number| number > 4 }

# The select method selects all of the numbers that are greater than 4 and returns them in an array. It does not mutate the caller (the original numbers array is unmodified).
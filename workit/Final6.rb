# 6. Get rid of duplicates without specifically removing any one value.

arr = [1, 1, 2, 3, 4, 4, 5, 6, 7, 8, 8, 9, 10]

puts arr.uniq # Does not modify caller object.

# or

puts arr.uniq!  # Modifies caller object.
# 3. Now, using the same array from #2, use the select method in a single line code to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select { |n| n.odd? ? true : false }

p new_arr


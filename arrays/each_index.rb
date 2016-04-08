# The each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to the value at each index. It passes the index of the element into the block and you may do as you please with it. The original array is returned.

a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" }

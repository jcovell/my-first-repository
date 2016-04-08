# each provides a simple way of iterating over a collection in Ruby and is more preferred to using the for loop. The each method works on objects that allow for iteration and is commonly used along with a block. If given a block, each runs the code in the block once for each element in the collection and returns the collection it was invoked on. If no block is given, it returns an Enumerator.

a = [1, 2, 3]
puts a.each
# The map method iterates over an array applying a block to each element of the array and returns a new array with those results.

a = [1, 2, 3, 4]
puts a.map { |num| num**2 }


puts "Collect does the same thing."
puts a.collect { |num| num**2 }

# Notice that after performing these methods there is no change to the initial array.  How do you know which methods mutate the caller and which ones don't? You have to use the methods and pay attention to the output in irb; that is, you have to memorize or know through using it.

a = [1, 2, 3]
a.map { |x| puts x**2 }

# Because puts returns nil every time the block is invoked nil is returned which makes up the values in the newly created returned array.

# If no block is given, map returns an Enumerator:

a = [1, 2, 3]
puts a.map

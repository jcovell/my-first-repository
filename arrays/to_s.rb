a = [1, 2, 3]
puts "It's as easy as #{a}"

# The to_s method is used to create a string representation of an array. Ruby does this behind the scenes when you use string interpolation to print an array to the screen.  In order to get our array to print properly, Ruby is calling the to_s method on our array and adding it into the string.
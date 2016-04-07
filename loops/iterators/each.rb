# Iterators are methods that naturally loop over a given 
# set of data and allow you to operate on each element 
# in the collection.

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }

# Here we have called the each method using the dot 
# operator (.) on our array. What this method does 
# is to loop through each element in our array, in 
# order, starting from 'Bob'. Then it begins executing 
# the code within the block. The block's starting and 
# ending points are defined by the curly braces {}. 
# Each time we iterate over the array, we need to assign
# the value of the element to a variable. In this example 
# we have named the variable name and placed it in 
# between two pipes |. After that, we write the logic 
# that we want to use to operate on the variable, which 
# represents the current array element. In this case it 
# is simply printing to the screen using puts.
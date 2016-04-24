# variables are pointers to physical space in memory. In other words, variables are essentially labels we create to refer to some physical memory address in your computer.

# The line of code a << ", Bob" did not result in reassigning a to a new string. Rather, it mutated the caller and modifiedthe existing string, which is also pointed to by the variable b. This explains why in this code, b reflects the changes to a - they're both pointing to the same thing.

# This is the major point of this section: some operations will mutate the actual address space in memory, thereby affectingall variables that point to that address space. Some operations will not mutate the address space in memory, and instead will re-point the variable to a new address space in memory.

# This also applies to variables that are arrays, hashes, or any data structure that has methods that mutates the caller. Ifyou call a method that mutates the caller, it will change the value in that address space, and any variables also pointing there will be affected. Therefore, always pay attention whether your variables are pointing to the same object (space in memory) or if they are dealing with copies that occupy different address space in memory.

a = [1, 2, 3, 3]
b = a
c = a.uniq

# or

a = [1, 2, 3, 3]
b = a
c = a.uniq!

or

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

# What is a? What if we called map! instead of map from within the test method, how would that affect the value of a?Remember when we're passing in arguments to a method, we're essentially assigning a variable to another variable, like we did with b = a. Working with b in the test method may or may not modify the a in the outer scope, depending on whether we modify the address space in memory that a is pointing to.

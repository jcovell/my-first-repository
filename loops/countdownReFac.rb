# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"

# We changed the line x = x - 1 to x -= 1. This 
# is common to many programming languages and it's 
# a nice succinct way to say the same thing with 
# less typing. You can use it with any other operator 
# as well (+, *, /, etc.).
# Until Loop

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

# Again we changed the line x = x - 1 to x -= 1. 
# This is common to many programming languages and 
# it's a nice succinct way to say the same thing 
# with less typing. You can use it with any other 
# operator as well (+, *, /, etc.).
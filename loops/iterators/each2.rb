# Each command with do/end blocks

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# We've added the counter x to add a number before each 
# name, creating a numbered list output. The number x is 
# incremented every time we go through the iteration.
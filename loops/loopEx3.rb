# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

names = ['Linda', 'Jerry', 'Dakota', 'Shilo']
    
x = 1

names.each_with_index do |name|
  puts "#{x}. #{name}"
  x += 1
end



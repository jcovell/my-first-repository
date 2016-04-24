# Another useful method that works in a similar way to each_index is each_with_index. each_with_index gives us the ability tomanipulate both the value and the index by passing in two parameters to the block of code. The first is the value and the second is the index. You can then use them in the block.

a = [1, 2, 3, 4, 5]
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }

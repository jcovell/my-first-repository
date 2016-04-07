X = 0
3.times do
    x += 1
end
puts x

# x prints 3 but,

Y = 0
3.times do
    y += 1
    x = y
end
puts x

# Gives an error because the x was 
# created withing the do/end block.



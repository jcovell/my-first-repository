# Blocks, like parameters, can be passed into a method just like normal variables.

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

# The ampersand (&) in the method definition tells us that the argument is a block. You could name it anything you wanted. The block must always be the last parameter in the method definition. When we're ready to use the method, we call it like any other method: take_block. The only difference is that because this method can accept a block, we can pass in a block of code using do/end. 

# Let's make this more complex. Say we wanted to pass an argument to the method as well.

# passing_block.rb

def take_block(number, &block)
  block.call(number)
end

number = 42   
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# Here we are passing the numberinto the take_block method and using it in our block.call. 

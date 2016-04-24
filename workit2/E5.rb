# 5.W hy does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)

# Missing the ampersand sign to allow a block to be passed as a parameter.


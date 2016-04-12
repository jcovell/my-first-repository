# 5.Why does the following code give the following error when we run it?

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

#Answer
# block is just a local variable, &block is a reference to the block passed to the method. 
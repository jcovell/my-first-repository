# 2.What will the following program print to the screen? What will it return?

def execute(&block)
  block   #< missing .call
end

execute { puts "Hello from inside the execute method!" }

# Nothing prints to the screen because the block was not activated with a .call method.  The code returns a Proc object.
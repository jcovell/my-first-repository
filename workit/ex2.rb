# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Ans: Nothing prints to screen as no call method.  Proc object returns.  Add .call to block to fix.
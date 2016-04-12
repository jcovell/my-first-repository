def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)

# Returns exception:

# Hello, John
# greeting.rb:2:in +': no implicit conversion of Fixnum into String (TypeError) from greeting.rb:2:ingreet'
# from greeting.rb:6:in `<main>'

# The first use of the greet method supplies a String as the parameter, and so the output is what you'd expect it to be. But when we pass 1 as the argument into the greet method, we get a TypeError exception. We already mentioned the first line: it's the error type and the error message. But what do the other lines mean?

# Part of this involves understanding how execution works within Ruby, involving the 'stack'. When ruby invokes a method, the method is added to Ruby's 'stack'. In the simple example above when we called greet("John"), program execution would look like this:

# main -> greet -> puts -> exit and return to main


# Now we can make a little more sense of the output from the error, as it provides a detailed trace (known as a stack trace) that shows the flow of execution and where the error occurred.

# In the second method invocation, greet(1), an error occurs and the program execution flow didn't exit back to main, and stayed in the greet method. The program execution looks like this:

# main -> greet -> puts

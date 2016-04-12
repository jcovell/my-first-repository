def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

# The first example works as expected, the latter causes an exception. Ordinarily this should pass the execution flow through as following:

main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -> decorate_greeting -> main


# Looking at the stack trace, you can see this happening: on line 14 (the beginning of the chain where the error originated) the decorate_greeting method is called. It then identifies line 10, where the greet method is called by decorate_greeting, and then line 6 where greet calls space_out_letters. Because the function 'split' expects a string, we get an error, along with a trace of the calls that lead up to that error. In a small script this is less useful, but in a larger codebase, being able to trace the execution flow is a very useful way to drill down to the source of the error.


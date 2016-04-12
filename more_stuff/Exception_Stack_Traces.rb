# For the purposes of this section an exception can be viewed as synonymous with an error. It's important to start developing an eye for scanning and parsing the gibberish output of an exception. This is an important skill one of the most important.

# Let's take a look at a simple example of an error condition:  

# irb :001 > '1' + 1 TypeError: no implicit conversion of Fixnum into String

# Some other common built-in error types you may encounter are:

# StandardError, TypeError, ArgumentError, NoMethodError, RuntimeError, SystemCallError, ZeroDivisionError. RegexpError. IOError,   EOFError, ThreadError, ScriptError, SyntaxError, LoadError. NotImplementedError, SecurityError

def greet(person)
    puts "Hello, " + person
end

greet("John")
greet(1)


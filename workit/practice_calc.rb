REFACTORED CALCULATOR:
# 1. Create a method that lets me change the prompt anytime you want to put output to the user:

def prompt(message)
  Kernel.puts("=>{message}")
end

# 2. Refactoring if statements to case statements.

result = case operator
          when '1'
          number1.to_i() + number2.to_i()  
          when '2'
          number1.to_i() - number2.to_i()
          when '3'
          number1.to_i() * number2.to_i()
          when '4'
          number1.to_f() / number2.to_f()
end

# 3. Install the two smaller loops to verify that the input for the 1st & 2nd numbers are valid numbers. a) loop do/end b) check with an if statement & break if okay. c) need the method valid_number?(number). d) Remember have to use to_i to convert string to an interger and != 0 not equal to zero. e) Also have to initialize the number1 variable outside the loop do construct or number1 = ''. f) Likewise, have to intialize 2nd number above loop do statement.

number1 = '' #
loop do
  prompt("What's the first number?")
  number1 = Kernel.gets().chomp()
  if valid_number?(number1)
    break
  else
    prompt("Hmm... that doesn't look like a valid number.")
  end
end

# Then the same thing for the 2nd number inpout:

number2 = ''
loop do
  prompt("What's the second number?")
  number2 = Kernel.gets().chomp()
  if valid_number?(number2)
    break
  else
    prompt("Hmm... that doesn't look like a valid number.")
  end
end

=begin 4. Install a larger loop to verify the input for the operator is a valid number and to see if the user wants to do this again. a) The main loop encompasses everything including the other two loops, so it would start right after the prompt("Welcome to Calculator"). b) This is the main loop so everthing underneath it can be indented and then end the main loop. c) To intercept this larger loop, now right before the end of loop and after showing the result, I need to install another condition, so prompt("Do you want to perform another calculation? (Y to calculate again)")  d) Then capture the answer or answer = Kernel.gets().chomp() e) Then break out of the main loop unless answer is yes or break unless answer.downcase().start_with?('y') If it does then we are not going to break, if it doesn't we need to prompt a closing statement  outside or right after breaking out of the main loop. prompt("Thank you for using Calcuator. Good bye!")
=end

loop do # Main loop.
  # Indent all below including other two loops. Then right before the end of the main loop:
prompt("Do you want to perform another calculation? (Y to calculate again)")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end
# If not y then prompt outside of the loop a good bye:
prompt("Thank you for using the Calculator. Good bye!")

=begin 5. Getting a little complicated so ask for the users name. a) in the initial welcome prompt add What's your name?:.  b) Everytime there is imput I have to use some sort of loop to validate.  So to validate a word or name was entered, first initialize the name or name = '' outside or before the loop and then a loop do/end with a condition. c) Condition is name = Kernel.gets().chomp() - if name.empty?() - prompt("Make sure to use a valid name.") - else - break - end. d) In order not to ask for name every single time, install a statement right before the main loop or prompt("Hi #{name}!").
=end 

prompt("Welcome to Calculator! What's your name?") 

name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure you use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!") # before back to main loop.

=begin 6. Now need to validate input on the operator. a) This validation goes right after the prompt(What operation would you like to perform...... b) First initialize the operator outside or before the loop. c) Then install the loop/do:
=end

operator = ""
loop do
  operator = Kernel.gets().chomp()
  if %w(1 2 3 4).include?(operator)
    break
  else
    prompt("Must choose 1,2,3 or 4")
  end
end

# 7. Use a "here doc" to write multi-line strings. So for the choice of operations I can make the format better to read. a) First before the current prompt name the: 

operator_prompt = <<-GFC
  What operation would you like to perorm?
  1) add
  2) subtract
  3) multiply
  4) divide
GFC
prompt(operator_prompt)

# Note: delimitors can be anything as long as they match.

# 8. Now after the operator is choosen, if you want to give a confirmation of the choice, add the following right after the choice and/or right before the result.

# prompt("Adding the two numbers....")
# Must convert the input(choice) back into words. So write a method:

prompt{"#{operation_to_message(operator")} the two numbers...")

# This converts the choosen operator 1,2,3 or 4 into a string, which will then be evaluated by the method and then displayed for the user.
# Now I need to go write that method.  This is installed with the other methods right before the welcome prompt.

def operation_to_message(op)
  case op
  when '1'
  'Adding'
  when '2'
  'Subtracting'
  when '3'
  'Multiplying'
  when '4'
  'Dividing'
end

# And then write the method  
def prompt(message)
  Kernel.puts("=>{message}")

prompt("Hello, Welcome to Calculator!")

loop do
  prompt("What's the first number?")
  number1 = Kernel.gets().chomp()
end

prompt("What's the second number?")
number2 = Kernel.gets().chomp()

promopt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

prompt("Adding the two numbers....")


result = case operator
          when '1'
          number1.to_i() + number2.to_i()  
          when '2'
          number1.to_i() - number2.to_i()
          when '3'
          number1.to_i() * number2.to_i()
          when '4'
          number1.to_f() / number2.to_f()
end

prompt("The result is #{result}")
=begin Exercise 1
1.Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word. - "laboratory" - "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"

We want to write a method that we can pass strings into and 
to check to see if the string "lab" exists in the string we pass in this method.  
1. create a method called check_in.
2. we want it to pass in this word (word)
3. then we want to create an if condition.  if the word "lab " exists, we want to do something. If not we want to do something else.
Using Regular expressions (regexps) are patterns which describe the contents of a string. Can use // with =~ that is a basic Ruby pattern operator.  If I put the letter i after // it will make it case insensitive.
=end

def check_in(word)
  if /lab/i =~ word   
      puts word
  else
      puts "Not here"
  end
end

check_in "laboratory"
check_in "experiment"
check_in "Pans Labyrinth"
check_in "elaborate"
check_in "polar bear"

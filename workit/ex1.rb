
# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

# To match use / / regex expression with =~ regex operator

def check_in(word)
  if /lab/i =~ word # regex with "i" for case insensitive.
      puts word
  else
      puts "Not present."        
  end
end

check_in ("laboratory")
check_in ("experiment")
check_in ("Pans Labyrinth")
check_in ("elaborate")
check_in ("polar bear")
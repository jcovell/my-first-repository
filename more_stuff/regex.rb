# Creating regular expressions starts with the forward slash character (/). Inside two forward slashes you can place any characters you would like to match with the string.  We can use the =~ operator to see if we have a match in our regular expression. Let's say we are looking for the letter "b" in a string "powerball". 

"powerball" =~ /b/

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end


has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

# boolean_matchdata.rb: On top of the =~ operator, we can use the match method to perform regex comparisons as well. This method returns a MatchData object that describes the match or nil if there is no match. You can use a MatchData object to act as a boolean value in your program.

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

#  If you encounter a string pattern matching problem, remember to look into using regex.
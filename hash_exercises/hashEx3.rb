# 3.Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Thenwrite a program that does the same thing except printing the values. Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

puts "These are the keys."
family.each_key {|key| puts key }

puts "These are the values within the keys."           
family.each_value {|value| puts value }

family.each { |key, value| puts " This is both key and value. #{key} and #{value}" }






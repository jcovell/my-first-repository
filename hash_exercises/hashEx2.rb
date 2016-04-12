puts "Merge - Returns a new value that is a hash that is merged, without changing the original object that calls the merge method. Or does not mutate the caller."

hash1 = { "a" => 10, "b" => 20 }
hash2 = { "b" => 26, "c" => 30 }

puts hash1.merge(hash2) 

puts "Merge! - Does the same thing, but mutates the caller."

hash1 = { "a" => 10, "b" => 20 }
hash2 = { "b" => 26, "c" => 30 }

puts hash1.merge!(hash2)


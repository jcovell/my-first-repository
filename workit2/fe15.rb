# 15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.  Then with "s" & "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |name| name.start_with?("s", "w") }

puts arr
puts "If you add the bang operator (!) to this method, you can perform the uniq function destructively. Much like the way the delete method works. So, b = [1, 1, 2, 2, 3, 3, 4, 4] with puts b.uniq! returns:"

b = [1, 1, 2, 2, 3, 3, 4, 4]
puts b.uniq!

puts "uniq and uniq! are two different methods for Ruby Arrays. You cannot simply append a ! onto any method and achieve a destructive operation."
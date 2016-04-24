# How do you know which methods mutate the caller and which ones don't? You have to use the methods and pay attention to the output in irb; that is, you have to memorize or know through using it.

a = [1, 2, 3, 4]
  a.delete_at(1)
puts a

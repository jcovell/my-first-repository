# 1.Below we have given you an array and a number. Write a program that checks to see if the number appears in the array

arr = ["b", "a"]
  arr = arr.product(Array(1..3))
  arr.first.delete(arr.first.last)
   
arr = ["b", "a"]
  arr = arr.product([Array(1..3)])
  arr.first.delete(arr.first.last)

# Answer 1: 1 and arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# Answer 2: [1, 2, 3] and  arr = [["b"], ["a", [1, 2, 3]]]c 
a = [1, 2, 3]
def mutate(array)
  array.pop
end

p "Berfore mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

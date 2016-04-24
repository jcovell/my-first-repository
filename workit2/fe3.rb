# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select { |number| number.odd? }


new_arr = arr.select do |number|
  if number.odd?
      true
  else
      false
  end
end

# Turner

new_arr = arr.select do |number|
  number.odd? ? true : false
end

puts new_arr




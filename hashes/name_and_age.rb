# if you want to just retrieve all the keys or all the values out of a hash, you can do so very easily. Example:

irb :0011 > name_and_age.keys
=> ["Bob", "Steve", "Joe"]
irb :0012 > name_and_age.values
=> [42, 31, 19]

# Notice that the returned values are in array format. Because it's returning an array, you can do interesting things like printing out all the keys in a hash: name_and_age.keys.each { |k| puts k }.

# A Note on Hash Order

# In past versions of Ruby, you could not rely on hashes maintaining order. Since Ruby 1.9, hashes maintain the order in which they're stored. It's important that you know this because if you are ever working with an older version of Ruby (anything before Ruby 1.9) you cannot rely on the hashes being in any specific order.

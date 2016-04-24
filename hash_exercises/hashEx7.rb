# 7.Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

# Solution

# The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as thekey.
# The colon is not using the local variable X, but is using the symbol x.  The => is using the local variable x which inthis case is a string value. 
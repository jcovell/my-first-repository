# The rest of Exercise 1.

# In Ruby, the File class is a subclass of IO, a class responsible for representing bidirectional streams. Some famous IO streams you might be familiar with include STDOUT, STDIN and STDERR, which stand for "standard output", "standard input" and "standard error", respectively.

File.superclass
$stdout
$stderr
$stdin

# Ruby offers us a few classes to interface with files and the file system. In addition to the File class that we've already looked at, there's Dir, which is an interface for manipulating directories and their contents. Another class that is helpful in linking files and directories is Pathname. Read up on these classes here:

# Dir - Dir shares some of File's methods. However, it is not an IO stream.

# Pathname The Pathname class exposes pretty much all of the methods of File and Dir. The advantage to using Pathname is you can declare an instance of it and access the class methods of File and Dir on the instance object.

# Note: Depending on your particular Ruby installation, you may need to require Pathname before you can use it.

require 'pathname'
f = File.new("simple_file.txt", "r")
pn = Pathname.new(f)
pn.extname
file.extname("simple_file.txt")

# In the example above we create a file instance, and then use an instance of Pathname to find the extension. We see this is equal to calling the File::extname method.

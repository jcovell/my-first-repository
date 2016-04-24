# examples using common formats: JSON, CSV, XML/HTML, and XLS. Files can exist before and after a program runs. Files canalso be shared and validated to formats that have nothing in common with one another. In this chapter we will create, open, and edit files using Ruby. We will look at how Files fit into the grand scheme of programming and look at examples using common formats: JSON, CSV, XML/HTML, and XLS.

# To create a file:
my_file = File.new("simple_file.txt", "w+")
my_file.close # always close files!

# Opening files:
file.open
#  r: read-only (starts at beginning of file)
#  w: write-only (if the file exists, overwrites everything in the file)
#  w+: read and write (if the file exists, overwrites everything in the file)
#  a+: read-write (if file exists, starts at end of file. Otherwise creates a new file). Suitable for updating files.

File.read("file_name") #Spits our entire contents of the file.
File.readlines("file_name") # Reads the entire file based on individual lines and returns those lines in an array.

# Adding content to simple_file.txt. Note that in most programming languages, including Ruby, the flow for working withfiles is open-use-close. We can use write or puts to write files. The subtle difference between the two being puts adds a line break to the end of strings, while write does not.

# Ruby will automagically close the file if the open method is called with a block.

# Let's see how it works with write:
File.open("simple_file.txt", "w") { |file| file.write("adding first line of text") }

# We first open the file with the w option and invoke a block that writes the contents we specify to the file. This way of doing things makes sure the file closes at the end of the block.

File.read("simple_file.txt")

# Alternatively, we could open the file, write to it and finally close it.


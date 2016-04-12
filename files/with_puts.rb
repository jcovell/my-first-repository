sample = File.open("simple_file.txt", "w+")
sample.puts("another example of writing to a file.")
sample.close
File.read("simple_file.txt")
# We open the file, write to it and close it.

# Now insert more text into simple_file.txt:
File.open("simple_file.txt", "a+") do |file|
    file << "Here we are with a new line of text using the shovel operator."
end
File.readlines("simple_file.txt").each do |line|
    puts line
end

# In this example, we open the file for reading and updating with a+ mode, declare a variable file as a placeholder for the file and append more text to it with the shovel operator. Note that the file is automatically closed after the operation (the end of the block) and see below, we can use puts or write in place of <<.

File.open("simple_file.txt", "a+") do |file|
    file.write "Writing to files in Ruby is simple."
end

File.readlines("simple_file.txt").each_with_index do |line, line_num|
    puts "#{line_num}: #{line}"
end

0: another example of writing to a file.
1: Here we are with a new line of textWriting to files in Ruby is simple.

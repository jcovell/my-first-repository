# Delete files by passing the name or reference to a file we want to delete to File.delete. Example:

File.new("dummy_file.txt", "w+")

File.delete("dummy_file.txt")

# Note: Be careful, this command can be dangerous as it totally deletes the file from your file system.
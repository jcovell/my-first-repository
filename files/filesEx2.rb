# Lets look at the current directory and report the files that have .txt extensions

    d = Dir.new(".")
    while file = d.read do
        puts "#{file} has extension .txt" if File.extname(file) == ".txt"
    end

# We can also do this using the Pathname class. We have to require 'pathname' before using it. Here's an example:

    require 'pathname'
    pn = Pathname.new(".")
    pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }

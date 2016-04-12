# Procs are blocks that are wrapped in a proc object (we'll cover objects in part 3 of this book) and stored in a variable to be passed around. This is how you define a proc.

# proc_example.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call

Procs can also take arguments if specified.
# proc_example.rb

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"


# Procs can be passed into methods. Let's take our previous passing_block.rb code and modify the method to take a proc instead. We'll add some more functionality too.

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)


Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.

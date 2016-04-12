# The to_a method returns an array version of your hash when called. Let's see it in action. It doesn't modify the hash permanently though. Example:

irb :009 > name_and_age.to_a
=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]
irb :010 > name_and_age
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}


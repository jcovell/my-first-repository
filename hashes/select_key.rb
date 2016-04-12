# The select method allows you to pass a block and will return any key-value pairs that evaluate to true when ran through the block. Examples:

irb :004 > name_and_age.select { |k,v| k == "Bob" }
=> {"Bob"=>42}

irb :005 > name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
=> {"Bob"=>42, "Joe"=>19}

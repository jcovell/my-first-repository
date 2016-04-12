# The has_key? method allows you to check if a hash contains a specific key. It returns a boolean value. Examples:

irb :001 > name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}
irb :002 > name_and_age.has_key?("Steve")
=> true
irb :003 > name_and_age.has_key?("Larry")
=> false

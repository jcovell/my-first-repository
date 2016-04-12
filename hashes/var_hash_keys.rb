# hashes can be very diverse and you can pretty much store whatever you want to in them. Also notice that we are forced to use the old style (i.e., using =>) when we deviate from using symbols as keys.

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 
'brown'}    # symbol as key

irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}

irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}

irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}

irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}

irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}

# When you have a specific action that you need to perform, look for it first among Ruby's standard classes. Using librarieslike the Math module can help you solve problems more efficiently.

# Let's say you wanted to find a way to calculate the square root of a number. Ruby's Math module has a method called sqrtthat you can use right away.

irb :001 > Math.sqrt(400)
=> 20.0

# Or maybe you need to use PI for something. The below is a "constant" that comes with the Math module. It's alright thatyou don't know exactly what constants are yet and you don't know the syntax. Just understand the concept for now. We are using Ruby's built-in libraries to solve our problems, rather than building our own solutions from scratch every time.

irb :002 > Math::PI
=> 3.141592653589793

#What if you wanted to calculate what specific day July 4th occurred in 2008? You can use Ruby's built-in Time class.

irb :003 > t = Time.new(2008, 7, 4)
=> 2008-07-04 00:00:00 -0400
irb :004 > t.monday?
=> false
irb :005 > t.friday?
=> true

# You can see the power of using Ruby's standard classes. Note: why is it Math.sqrt and not math.sqrt? This is because sqrtis a "class method", and not an "instance method".  So far, we've been dealing mostly with instance methods, and this is one of the few times where we use a class method. For now, just use the syntax we introduced. We'll talk about the differences between class and instance methods later in the book when we introduce Object Oriented Programming concepts.


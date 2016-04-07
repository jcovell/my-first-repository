# This loop uses the odd? method to 
# decide if the current variable in 
# the loop is odd. If it is, it prints 
# to the screen, otherwise it just 
# increments x by one and continues 
# through the loop.

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end
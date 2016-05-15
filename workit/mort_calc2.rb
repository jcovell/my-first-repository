def money (x)
  sprintf("%05.2f", x)
end

balance = 500000
annual_rate = 3.25.to_f * 0.01
monthly_rate = annual_rate / 12.to_f
n = 15*12

puts "Loan term (Number of payments) [#{n}]"
puts "Annual interest rate [#{annual_rate*100}]"
puts "Monthly interest rate [#{monthly_rate}]"
term = (1 + monthly_rate)**n
puts "Term = [#{term}]"

monthly_payment = balance * (monthly_rate * term / (term - 1))
puts "Monthly Payment = [#{money(monthly_payment)}]"

while (balance > 0)
  interest_payment = balance * monthly_rate
  principal_payment = monthly_payment - interest_payment
  balance = balance - principal_payment
  puts("Interest [$#{money(interest_payment)}], Principal [$#{money(principal_payment)}], Balance = [$#{money(balance)}]")
end


# Up top of the ruby are all the parameters.  For an example, I used $500K @ 3.25% for 15 years. (n = 15*12, where n is the number of months for the loan)

# Then, you will see the loop where it outputs the principle payment, the interest payment, and the remaining balance.  For each month, your interest payment is always the interest rate multiplied by the remaining balance.  Then, whatever the difference is between that and the monthly payment is what gets applied to the principal.

# It's kind of neat, and you can run multiple scenarios based on different initial outlays and percentage rates.

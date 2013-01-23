require File.dirname(__FILE__) + '/part6'

#puts 5.dollars
#puts 5.euros

#puts 5.dollars.in(:euros)

#puts 5.dollars.in(:euros) # => 6.5
#puts 10.euros.in(:rupees)

puts 2.rupee.in(:dollar) #0.038

puts 1.euro
puts 50.yen
puts (1.euro - 50.yen)
puts (1.euro - 50.yen).in(:dollars)  # => 0.700


test_str = "there goes the neighborhood"

if test_str.palindrome?
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Madam, I'm Adam"

if test_str.palindrome?
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

puts [1,2,3,2,1].palindrome?

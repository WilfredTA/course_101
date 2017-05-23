#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

#Understand the problem
# Input: An integer
# Output: Sum of integer's digits
# Rules: Integer must be split and iterated over

#Examples
#puts sum(23) == 5
#puts sum(496) == 19
#puts sum(123_456_789) == 45


#Data structures
# Input = integer
# Output is sum of digits of integer
# Therefore input must be split up and iterated over
# So input turned into array


#Algorithm
# Integer is divided into an array of characters
# Array iterated over. Each element turned into integer 
# Elements of array added into a sum
# Return sum


def sum(number)
     number.to_s.chars.map{ |num| num.to_i}.reduce(:+)
end

puts sum(123_456_789) == 45
puts sum(496) == 19
puts sum(23) == 5

puts sum(123456789)
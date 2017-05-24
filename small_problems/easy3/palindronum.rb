#Write a method that returns true if its integer argument is palindromic, 
#false otherwise. A palindromic number reads the same forwards and backwards.

#Understanding the problem
# Integers are not indexed so cannot be reversed,
# Turn into an indexed data type and then reverse
# Compared indexed data type to its reversal


def palindronum(integer)
    integer.to_s.reverse == integer.to_s
end

puts palindronum(123321)
puts palindronum(34543)
puts palindronum(345)
puts palindronum(00000)
puts palindronum(0034300) # Will not work because Ruby reads it as an octal number and its octal counterpart is not palindromic

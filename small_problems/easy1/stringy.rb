#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
#The length of the string should match the given integer.

# Understand the problem
# Input is a number
# Output is a string
# Rules: String is alternating 1's and 0's
# The total characters of the string = the integer that is input
# String always begins with 1

#Examples 
#puts stringy(6) == '101010'
#puts stringy(9) == '101010101'
#puts stringy(4) == '1010'
#puts stringy(7) == '1010101'

# Data Structure
# Input is integer 
# Rule = integer: How many times to puts 1 and 0 

#Algorithm
# Get integer input
# Initiate a loop that puts adds 1 to a string if counter is odd and 0 if counter is even
# Break when counter is equal to the integer


def stringy(integer)
    counter = 1
    string = ""
    loop do
        if counter.even? 
            string << "0"
        else
            string << "1"
        end
        break if counter == integer
        counter += 1
    end
    string
end

p stringy(6)
p stringy(9)
p stringy(4)
p stringy(7)
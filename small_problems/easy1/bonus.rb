#Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
#If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

#Understand the problem
# Input: Integer and boolean
# Output, half the integer if boolean is true, 0 if boolean is false
# Rules: Return half of integer if boolean is true
# Return 0 if boolean is false

#Examples
#Found on LauncSchool

#Data Structure
# Input: Integer and boolean
# Rules: Logical flow 

#Algorithm 
# If boolean is true, 
# Set bonus to half of integer and return bonus
# Otherwise
# Set bonus to 0 and return 0 


def bonus(salary, boolean)
    case boolean
        when true then bonus = salary / 2
        else bonus = 0
    end
    bonus
end

puts bonus(1000, false)
puts bonus(2400, true)
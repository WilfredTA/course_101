#Write a method that takes one integer argument, which may be positive, negative, or zero. 
#This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd?(number)
    number % 2 == 1
end


#Understand the problem
    # Receives an integer outputs a boolean
    # If odd, output true, if even, output false
#Examples
    #is_odd?(2) => false
    #is_odd?(0) => false
    #is_odd?(-17) => true
#Data Structures
    # Input is integer
    # Rules as logic (data structure with all odd numbers too complex)
#Algorithm
    # If the quotient of number divided by |2| is 1
    # return true
    # else return false


#Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

#You may assume that the argument will always be a valid integer that is greater than 0.

#Input is integer > 0 
# Output is array between 1 and integer 

# Turn num into array
# Turn range from 1 to num into array

def count(num)
    (1..num).to_a
end

p count(4)
p count(1)
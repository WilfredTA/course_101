#Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# Take in a number, return the number * 2
# Unless certain condition
# Condition breakdown: 
# num size is even

# Convert integer to string and divide string into two halves
# Size / 2 - 1 is the last index in the first half
# Compare the two halves
def doublenum(number)
    num_string = number.to_s
    half = num_string.size / 2 - 1
    first_half = num_string[0..half]
    second_half = num_string[half + 1..-1]
    
     if num_string.size.even? && second_half == first_half
         number
     else
         number * 2
     end
end

p doublenum(1212)
p doublenum(4444)
p doublenum(444)
p doublenum(1331)




#Understand the problem
# Input is an integer, output is a list of each digit in the integer
# Requirements given via examples 

# Examples
#puts digit_list(12345) == [1, 2, 3, 4, 5]     => true
#puts digit_list(375290) == [3, 7, 5, 2, 9, 0] => true
#puts digit_list(444) == [4, 4, 4]             => true 

#Data Structure
    # From these examples we can see that the method should return an array
    # since equating a method call to an array returns true
    # This array should have as its first index the first digit of the number
    # Integers are not indexed and therefore do not have a built in to_a method. 
    # Thus, getting from integer input to array output requires more than one step. 
    # Integer must become a data structure that is indexed, which can then be turned into an array
    # Cannot simply place each char into array, because final array 
    # must contain numbers. 
    # Therefore, begin as integer, then as string, then as something other than array of numbers, then as array of numbers. 
    # 

#Algorithm
    # Convert integer to string
    # Convert string to a list of characters (array)
    # Iterate over array, transforming each char to integer
    # Place each integer in new array


def digit_list(integers)
    integers.to_s.chars.map{|char| char.to_i}
end


puts digit_list(12345) == [1, 2, 3, 4, 5]

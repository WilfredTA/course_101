#Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 

#and each element has the running total from the original Array.

# Input is array 
# Transformation
#   For each element, do operation on element
#return array


#Algorithm
# Get array
# Iterate over array 
# Each element is reassigned a value of itself plus the sum of numbers before it
# Assign newest value to sum


def running_total(array)
    sum = 0
    array.map{|num| sum = sum + num}
end

p running_total([2, 5, 13])

# Using Enumerabe#inject

# Iterate over array, placing each element in new array 
# Then transforming array via the result of
# Calling inject on new array

def running_total_with_inject(array)
    new_array = []
    array.map do |num|
        new_array << num
        new_array.inject(:+)
    end
end

p running_total_with_inject([2, 5, 13])
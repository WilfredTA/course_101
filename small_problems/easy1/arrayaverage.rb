#Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
#The array will never be empty and the numbers will always be positive integers.

#The Problem
# Input = array of integers
# Output = integer 
# Rules: If array is empty, error
# If any elements are negative, error

#Examples:
#puts average([1, 5, 87, 45, 8, 8]) == 25
#puts average([9, 47, 23, 95, 16, 52]) == 40

#Data structures
#Input: Array
# Rules: logic based: #any? and #empty?

#Algorithm:
# If array is not empty and all numbers are positive: 
# SET total as: Add each value of array 
# SET average as: total divided by number of items in array
# Return average


def average(array)
    total = array.reduce {|total, number| total + number}
    average = total / array.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
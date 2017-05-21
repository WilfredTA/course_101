# Write a method that counts the number of occurrences of each element in a given array.

#Understand the problem
# Requirements not explicit
# Raw input is array
# Output is strings paired with integers (as string or hash)
# Rules: Output is printed to screen 
# Array is partitioned into collections of same string
# The size of these collections are calculated
# Size and string are paired

#Examples/Test Cases
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2


# Data Structure 
# Input as array 
# Count the unique instances


# Algorithm
    # New array equal to unique elements of old array
    # Count the frequency of each unique element in old array
    # for each element in unique array
    # Print each key value pair

def count_events(array)
    unique_array = array.uniq 
    frequency_list = {}

    unique_array.each do |unique_object|
        frequency_list[unique_object] = array.count(unique_object)
    end

    frequency_list.each do |object, frequency| 
        puts "#{object} => #{frequency}"
    end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_events(vehicles)

# After reading Launch School's solution, I should note: 
# I was afraid of doing it that way because I suspected that
# the method would print out duplicates
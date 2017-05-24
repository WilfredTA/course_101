#Write a program that solicits 6 numbers from the user, then prints a message 
#that describes whether or not the 6th number appears amongst the first 5 numbers.

#Understanding, Data structures, and algorithm

# Asks user for input integer
# Gets user integer and stores in a collection
# Repeat four more times
# Then asks user for input integer one more time
# Checks collection to see if collection contains integer
# Outputs that the number (integer) does or does not appear in collection

array = []


puts " Enter the 1st number: "
num1 = gets.chomp.to_i
array << num1

puts " Enter the 2nd number: "
num2 = gets.chomp.to_i
array << num2

puts " Enter the 3rd number: "
num3 = gets.chomp.to_i
array << num3

puts " Enter the 4th number: "
num4 = gets.chomp.to_i
array << num4

puts " Enter the 5th number: "
num5 = gets.chomp.to_i
array << num5

puts " Enter the last number: "
num6 = gets.chomp.to_i

if array.include?(num6)
    puts " The number #{num6} appears in #{array}"
else
    puts " The number #{num6} does not appear in #{array}"
end


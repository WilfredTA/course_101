#Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: 

#addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.



#The Problem
# Input is two integers
# Output is the result of applying multiple operations to two integers
# Each result output on its own line

OPERATORS = [:+, :-, :*, :/, :%, :**]

puts "Enter the first number: "
number1 = gets.chomp.to_i

puts "Enter the second number: "
number2 = gets.chomp.to_i


OPERATORS.each do |op|
    evaluation = eval("#{number1} #{op} #{number2}")
    puts "#{number1} #{op} #{number2} = #{evaluation}"
end
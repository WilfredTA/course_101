#Write a program that asks the user to enter an integer greater than 0, 

#then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def sum(num)
    (1..num).to_a.reduce{|sum, num| sum + num}
end

def product(num)
    (1..num).to_a.reduce{|product, num| product * num}
end

puts "Please enter an integer greater than 0:"
number = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp.downcase

if answer == 's'
    puts "The sum of the integers between 1 and #{number} is #{sum(number)}"
else
    puts "The product of the integers between 1 and #{number} is #{product(number)}"
end


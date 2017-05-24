#Build a program that displays when the user will retire and how many years she has to work till retirement.

#Understand the problem
#Input: Age - integer
# Input2: Age of retirement
# Output: The current year, the year they will retire
# Years from current year till retirement year
# Requirements are implicitly represented in example

#Data structure
# Input: Age, integer; Age, integer
# Output: Time object now, Time object plus difference of ages

#Algorithm
# Gets age
# Gets retirement age
# difference = retirement age - age
# Output current date and date plus difference
# Output difference



puts "What is your age?"
age = gets.to_i
puts "What age do you want to retire?"
retirement_age = gets.to_i

difference = retirement_age - age
date = Time.now.year

puts "It is #{date}. You will retire in " + (date + difference).to_s 
puts "You only have #{difference} years of work to go!"





#Write a program that will ask for user's name. The program will then greet the user. 

#If the user writes "name!" then the computer yells back to the user.

#Algorithm
# Data structures: String input, string output
# Rules: Logical flow; if conditions because built-in string methods
# If input string does not have bang operator, 
# output greeting as capitalized string without bang operator
# If input string does have bang operator, 
# output greeting as uppercase string without bang operator

def greeting(name)
   if name.end_with?('!')
    puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING"
   else
    puts "Hello #{name.capitalize}."
   end
end

puts "What is your name?"
n = gets.chomp
greeting(n)
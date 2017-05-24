#Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
#A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

#Understanding problem
# Input is string
# Output is boolean
# Must compare string to its reverse order
# Requires transformation and comparison
# Case, punctuation, and space matters

# Algorithm
# Get string
# Get the chars of string 
# Reverse order of chars
# Join the chars into one string
# Compare original string to new string


def palindrome?(string)
    string.chars.reverse.join == string
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')


#String also has a #reverse method.. After checking the docs, I realize that this method
# would have worked and could have used string.reverse == string... 

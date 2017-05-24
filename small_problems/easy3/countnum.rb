#Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.

# Spaces should not be counted as a character.

#Algorithm and problem and data structure
#Input is string 
# Must count string but count method
# does not fullfill this.. must create an array of chars
# exclude all elements that are spaces in the array
# count array 
# Output array size in string


puts "Please enter a word or multiple words: "
word = gets.chomp 


size = word.chars.select{|char| char != ' '}.count

puts "There are #{size} characters in '#{word}'"
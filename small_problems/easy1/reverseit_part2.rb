
#Write a method that takes one argument, a string containing one or more words, 
#and returns the given string with all five or more letter words reversed. 
#Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.



#Understand the problem 
# Input string
# output string
# Rules: Only reverses words that have 5 or more letters
# Only include spaces in output if there was a space in input

#Examples 
#puts reverse_words('Professional')          # => lanoisseforP
#puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
#puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure
# Input as string
# Must iterate over strings with more than one word -> convert to array


#Algorithm
# Turn string into a collection
# Iterate over collection
# If element has more 5 or more chars, reverse element 
# After iteration, join elements with spaces 
# Return a new string


def reversal2(string)
    array = string.split
    array.map! do |word|
        if word.length >= 5
            word.reverse
        else
            word
        end
    end
    array.join(' ')
end

string1 = "Professional"
string2 = "Walk around the block"
string3 = "Launch School"

p reversal2(string1)
p reversal2(string2)
p reversal2(string3)

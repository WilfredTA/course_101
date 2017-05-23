#Write a method that takes one argument, a string, and returns the same string with the words in reverse order.


#Understanding the problem
# Input is strings. Output strings in reverse
# Rules: The word order reversed but not letter order
# Empty string is output when empty string is input
# 

#Examples
#puts reverse_sentence('') == ''
#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'
# Should all output true

#Data Structures
# Input - String then to array
    #because string needs to be separated into words
    #back into string

#Algorithm 
# Split string into a collection of words
# Reverse the order of each element in collection
# Join elements back together, separated by spaces


def reversal(string)
    string.split.reverse.join(' ')
end


sentence = "Hello what's up"

p reversal(sentence)
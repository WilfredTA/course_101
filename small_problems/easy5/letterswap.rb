# Understand the problem: 
# Input string of words separated by spaces
# Output: String where first and last letter of each word is swapped
# Rules: Every word contains at least one letter, every string has at least one 
# word, and strings only contain words and spaces

#ALgorithm and data structures
# String is indexed
# String first and last indices must equal each other
# Method that swaps first and last of a word
# Method that iterates over array of words and applies first method

def letterswap(str)
    str[0], str[-1] = str[-1], str[0] #Reassignment but returns array of elements at indices
    str
end

def letter_swap_of_words(str)
    str.split(' ').map{|word| letterswap(word)}.join(' ')
end

p letter_swap_of_words("Hello my name is Tannr")
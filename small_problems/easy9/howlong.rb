#Write a method that takes a string as an argument, and returns an Array that

#contains every word from the string, to which you have appended a space and the word length.

#You may assume that words in the string are separated by exactly one space, 

# and that any substring of non-space characters is a word.

#Input is a string
# Output is Array
# Rules: char strings not separated by one space constitute a word

def howlong(string)
    string.split(' ').map do |word|
        word = word + " #{word.length}"
    end
end

p howlong("Hi my name is tannr")
p howlong("Hello hi hi hello hello")
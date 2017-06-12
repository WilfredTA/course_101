#Write a method that takes a non-empty string argument, and returns the middle 
#character or characters of the argument. 
#If the argument has an odd length, you should return exactly one character. 
#If the argument has an even length, you should return exactly two characters.

#Algorithm
# The median can be defined by more elementary arithmetical operations
# An odd number divided by 2 = X.5 and X.0 + 1 always equals the median 
# An even number divided by 2 + .5 always equals its median. 
# GEt string
# if size of string is odd 
# index = size divided by 2 + 1
# If size is even 
# index = size divided by 2 and size/2 + 1 into an array 
#Return chars at index or indices

def median(string)
    case
    when string.size.odd?
        string[string.size/2.floor]
    else
        string[string.size/2 - 1] + string[string.size/2]
    end
end

p median('Launch')
p median('I love ruby')
p median('Launch School')
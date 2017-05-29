# The Problem
#Input is a string
#Removes all consecutive duplicates in the string
#Returns new string

#Data Structure and Rules
# String method squeeze removes runs of the same char
# when no args are given

def dailydouble(str)
    str.squeeze!
end

p dailydouble('ddaaiillyy ddoouubbllee')
p dailydouble('gggggggggggg')

# Alternative -------------

#Algorithm
# Iterate over str, place char into new string
# if char index -1 does not equal char

def crunch(str)
    counter = 0
    new_str = ''
    loop do
        if str[counter] != str[counter + 1]
            new_str << str[counter]
        end
        break if counter == str.size
        counter += 1
    end
    new_str
end

p crunch('ggggggggggg')
p crunch("Hellooooo myy mann")
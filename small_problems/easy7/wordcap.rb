# Input is a string
# Output is modified string with every word capitalized
# String to array
# ITerate over array, capitalize each word
# Join string and return


def stringcap(string)
    string.split.map{|word| word.capitalize}.join(' ')
end


p stringcap('hello my name is tannr')
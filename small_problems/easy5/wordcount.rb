# Algorithm
# Split string into array of words separate by spaces
# Transform array into array of integers, each int is the size of the word
# Iterate over array, defining key value pairs in hash
# Key is int and value is frequency of int


def wordcount(str)
    hash = {}
    str = str.split(' ').map{|word| word.size}
    str.each{|size| hash[size] = str.count(size)}
    hash
end
    
    
    p wordcount("Four score and seven.")
    p wordcount('Hey diddle diddle, the cat and the fiddle!')
    
def modified_count(str)
    hash = {}
    str = str.delete('^A-Za-z ').split(' ').map{|word| word.size}
    str.each{|size| hash[size] = str.count(size)}
    hash
end

p modified_count("It's me")
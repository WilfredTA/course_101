#Create a method that takes 2 arguments, an array and a hash. The array will contain 
#2 or more elements that, when combined with adjoining spaces, will produce a person's name. 
#The hash will contain two keys, :title and :occupation, and the appropriate values.
#Your method should return a greeting that uses the person's full name, and mentions the person's title.

#The problem
# Input: array and hash
# Output: String with person's name, occupation, and title 

#Data structures
# Array: Strings with name
# Hash two k/v pairs; occupation and title

#Algorithm
# Take array and hash 
# Join elements of array with spaces store as name
# Interpolate hash values into string 
# return string

def greeting(array, hash)
    name = array.join(' ')
    "Hello #{name}, it's nice to have a #{hash[:title]} #{hash[:occupation]} around"
end

puts greeting(['Tannr', 'Allard'], {:title => 'Master', :occupation => 'plumber'})
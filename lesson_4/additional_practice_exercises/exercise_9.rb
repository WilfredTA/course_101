#1. String to Array
#2. Iterate over array and capitalize each word. 
#3. Iterate over array and add each object into new string

def titleize(string)
   array = string.split(' ')
   counter = 0
   capitalized_string = ' '
   loop do 
     break if counter == array.length
     capitalized_string << array[counter].capitalize! + ' '
     counter +=1
   end
   p capitalized_string
end
   
greeting = "hello please capitalize the beginning letter of each word in this sentence."

titleize(greeting)

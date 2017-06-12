#input is array of integers
#Output is integer that is the sum of subsequent sums of integers in array
# E.g. [1,2,3] output should be 1 + 1+2 + 1+2+3

#Algorithm
# Initialize total variable
# Iterate over input array
# Total equals size times first index + size-1 times second index + size-2 times 3rd index etc

def sums(array)
    total = 0
    adder = array.size 
    counter = 0
    
    loop do
        break if counter == array.size
        total = array[counter] * adder + total
        adder -= 1
        counter += 1
    end
    total
end

p sums([1,2,3])
p sums([1, 2, 3, 4, 5])
  
                
        
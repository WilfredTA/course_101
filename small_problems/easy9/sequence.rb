# Input: 2 integers
# Output: Array of integers
# Rules: Integer 1 is the number of elements in output array
# Each element in array is integer 2 times the index + 1 


# Algorithm
# Need two things: Output data structure
# Place numbers into array quantity times
def sequence(quantity, number)
    sequence = []
    counter = 1
    quantity.times do 
        sequence << number * counter
        counter += 1
    end
    sequence
end

p sequence(4, 5)
p sequence(3, 0)
p sequence(0, 1000)
p sequence(4, -7)
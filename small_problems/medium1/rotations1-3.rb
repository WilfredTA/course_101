#Write a method that rotates an array by moving the first element to the

#end of the array. The original array should not be modified.

#Input is array 
# Output is new array 
# Element at last index of new array is first index of old array
require 'pry'

def rotate(array)
    rotated = []
    rotated << array[1..-1]
    rotated << array[0]
    rotated.flatten
end


def rotate2(num1, num2)
    # turn 1 into arr
    array = num1.inspect.chars
    # get num2 last chars
    begin_idx = array.size - num2 #index that rotated chars begins
    array[begin_idx .. -1] = rotate(array[begin_idx .. -1])
    array.flatten.join.to_i
    
end



#input is number
#Output is number maximally rotated
# Maximal rotation: rotate num, then rotate num from second number onward
# up to the length of num

def rotate3(num)
    length = num.inspect.length
    max_rotate = rotate2(num, length)
    loop do 
        length -= 1
         max_rotate = rotate2(max_rotate, length)
        break if length == 0
    end
    max_rotate
end

p rotate3(735291)
p rotate3(105)
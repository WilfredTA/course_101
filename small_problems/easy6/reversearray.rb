#Reverse the elements in an array and return reversed array
#Algorithm
# Input is array
# equate left index to right index, looping until left index is no longer
# less than half the size of the array (it will stop at the element preceding median)

def reversal(array)
    array = array.map{|element| element} #creates a copy of array, remove to have same object_id's
    left_index = 0
    right_index = -1
    
    while left_index < array.size / 2
        array[left_index], array[right_index] = array[right_index], array[left_index]
        left_index += 1
        right_index -=1
    end

    array
end



list = [1, 2, 3, 4, 5]
p reversal(list)
p reversal(list).object_id == list.object_id
p list[0].object_id == reversal(list)[-1].object_id

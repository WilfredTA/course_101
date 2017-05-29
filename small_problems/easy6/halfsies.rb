# Take an array as input and return two arrays as output. 
# The returned arrays should be the result of splitting the input array in half
# If the array has an odd number of elements, the first of the returned arrays 
# should contain the extra element

def even_arrays(array)
    arr1 = []
    arr2 = []
    index = 0
    while index < array.size / 2
        arr1 << array[index]
        index += 1
    end
    arr2 = array.select{|element| arr1.include?(element) == false}
    
    [arr1, arr2]
end
    
def odd_arrays(array)
     arr1 = []
    arr2 = []
    index = 0
    until index > array.size/2.0
        arr1 << array[index]
        index += 1
    end
    arr2 = array.select{|element| arr1.include?(element) == false}
    [arr1, arr2]
end

def halfsies(array)
    if array.size.even? 
        even_arrays(array)
    else
        odd_arrays(array)
    end
end
            
p halfsies([1, 2, 3, 4])
p halfsies([1, 2, 3, 4, 5])
p halfsies([])
p halfsies([5])
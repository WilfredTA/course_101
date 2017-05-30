#Takes two arrays 
# Multiples all possible pairs of elements 
# Outputs products in increasing order


def pairs(array1, array2)
    array1.product(array2).map{|obj1, obj2| obj1* obj2}.sort
end

p pairs([2, 4], [4, 3, 1, 2])
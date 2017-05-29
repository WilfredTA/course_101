# Takes two arrays as input
# Output is one array with elements of both arrays
# Rule: No duplicate elements 
# Select elements from array2 that array 1 doesnt include then add arrays

# I.e. return the union of two arrays (the set of elements that are either in arr1 or arr 2)


def merge(arr1, arr2)
    to_add = arr2.select{|element| arr1.include?(element) == false}
    arr1 + to_add
end

p merge([1, 2, 3], [3, 4, 5])
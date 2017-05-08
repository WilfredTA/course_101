a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a


#The above code would not mutate 'a', so 'a' would still be 2. This is because arr[0] 
# plus a new assignment is not assigning a to a new object: it is assigning the index 0
# of array 'arr' to a new object.
# When arr is defined as an array containing a and b, arr's elements reference
# the same objects as a and b: i.e. the elements of 'arr' have the same object ID's
# as a and b. arr[1][0] references an element INSIDE the array 'b' at index 0. Modifying this element
# changes the object that b references at its index 0, but it does not change the object id
# of array b, itself. 
# Therefore, a will still equal 2, but b will now equal [3, 8]
#
#
#
#
#
#
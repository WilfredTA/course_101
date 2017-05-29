# Takes an array as input and an object, returns true if array includes object
# and false if array does not
# Solution: 
# Count the amount of objects in array and return true if count does not equal 0


def does_list_include?(array, obj)
   array.count(obj) > 0
end

p does_list_include?([1,2,3,4,5], 3)
p does_list_include?([nil], nil)
p does_list_include?([1,2,3,4,5], 6)
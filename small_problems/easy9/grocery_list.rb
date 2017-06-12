#Input, array containing sub arrays
# Each sub array contains a string (fruit) and an integer
# Output: Flat array containing each fruit
# The fruit string is listed integer times

# From the solution at LS, I now realize that using #map to iterate through a nested array,
# One can call map on the outer array and perform transformation on the elements of the
# Inner array without creating a second iterator 
require 'pry'

def fruit_quantity(array)
    list = []
    array[1].times do
        list << array[0] 
    end
    list
end



def grocerylist(array)
    array.map do |sub_arr|
        fruit_quantity(sub_arr)
    end.flatten
end

p grocerylist([["apple", 3], ["orange", 4], ["berry", 5]])
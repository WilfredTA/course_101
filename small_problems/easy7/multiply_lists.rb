#Algorithm
# Input two arrays
# Iterate, placing each pair into an array
# iterate over new array, multiplying, then flatten


def multiply(array1, array2)
    new_array = []
    array1.each_with_index do |num, idx|
        new_array << num * array2[idx]
    end
    new_array
end

p multiply([3, 5, 7], [9, 10, 11])
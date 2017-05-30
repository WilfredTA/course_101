#Write a method that combines two Arrays passed in as arguments,
#and returns a new Array that contains all elements from both Array
#arguments, with the elements taken in alternation.

#The problem
# Input two arrays
# Output one array, alternating elements of the input arrays
# Rules: Both arrays assumed to be same size
# Iterate over one array, adding elements of other every odd index


def combine(array1, array2)
   [array1, array2].transpose.flatten
end


p combine([1, 2, 3], ['a', 'b', 'c'])


def interleave(arr1, arr2)
   combined_array = []
  arr1.each_with_index do |element, idx|
    combined_array << element 
    combined_array << arr2[idx]
  end
  combined_array
end

p interleave([1,2,3], %w(a b c))
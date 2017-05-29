#Takes an array of integers and sorts them based on the english words
# for each number, then outputs array of integers again

#Data Structures
# Input: Array of integers
# Rule: Order based on the sorting of enlish words for integers
# Must therefore match integer to word.. Can use array since numbers in original
# array can act as the index to access array of words

#ALgorithm
# Get array of int
# Transform array of int by accessing the words array at index int
# sort array
# Transform sorted array to the index of each word in word array

WORDS = %w(zero one two three four five six seven eight nine
          ten eleven twelve thirteen fourteen fifteen sixteen
          seventeen eighteen nineteen)
def alphasort(arr)
 arr = arr.map{|num| WORDS[num]}
 arr.sort.map{|word| WORDS.index(word)}
end

p alphasort((0..19).to_a)


# ------------------
#or: 

def alphasort2(arr)
  arr.sort_by!{|num| WORDS[num]}
end

p alphasort2((0..19).to_a)



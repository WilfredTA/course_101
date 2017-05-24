#Understanding the program
# Takes an array as argument
# returns a new array with all elements
# that were at the odd places in old array
# per the examples, this is the equivalent to 
# returning all elements at positive indeices
# Since the examples demonstrate that the first element
# is being counted as 1 instead of 0


def oddities(ary)
    odd_ary = []
    ary.each_with_index do |num, index|
        odd_ary << num if index.even? || ary.empty?
    end
end


#Examples
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []


p oddities([2, 3, 4, 5, 6]) 
p oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([])
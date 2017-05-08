array = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

def sorter(arr)
    arr.sort_by do |sub_arr|
    sub_arr.select do |num|
        num.odd?
    end
end
end

p sorter(array)

# Using select allows us to only pass the odd elements of each sub array to sort_by
# which obviously implies that sort_by will only have the odd numbers of each array available to it. 
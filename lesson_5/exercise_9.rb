array = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

def order(arr)
    arr.map do |sub_array|
    sub_array.sort do |first, second| 
        second <=> first
    end
end
end

p order(array)
def multi_average(array)
    product = array.reduce{|number, new| number * new}
    p product
    product/array.size.to_f
end

p multi_average([5,3])
p multi_average([2, 5, 7, 11, 13, 17])
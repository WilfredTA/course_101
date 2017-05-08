#Sort array into descending numeric value

arr = ['10', '11', '9', '7', '8'] 

def sorter(array) 
    array.sort do |a,b|
  b.to_i <=> a.to_i
end
end



 p sorter(arr)
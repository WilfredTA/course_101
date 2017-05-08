arr1 = [1, [2, 3], 4]

arr_two = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


def first(x)
    x.each do |element|
        if 
            element.to_s.to_i == element
        else
            element.delete(3)
            element.push(4)
        end

    end
end

p first(arr1)
# ______________________________________#

def checker(arr2)
    arr2.each do |element| 
        if element.to_s.to_i == element # For any integer elements
             if element == 3
                  arr2.delete(element)
                 arr2.push(4)
            end
         end
    end
end

p checker(arr_two)

p hsh1[:first][2].replace([4])

p hsh2[["a"]][:b] = 4

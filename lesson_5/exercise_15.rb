arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

#Return only the hashes wherein all the integers are even

def evener(array)
    array.select do |hash|
        hash.all? do |k, v|
            v.all? do |num|
                num.even?
            end
        end
    end
end

p evener(arr)
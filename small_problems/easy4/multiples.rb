#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples.

# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

#You may assume that the number passed in is an integer greater than 1.

#Understanding the program
# Takes integer input and gets a collection of numbers from 1 to that integer
# Selects all in that collection that are multiples of 3 or 5
# Sums up new collectioon
# Returns sum

def multiple?(num)
    num % 3 == 0 || num % 5 == 0
end

def create_collection(num)
    counter = 1
    array = []
    loop do
        array << counter
        break if counter == num
        counter += 1
    end
    array
end

def multisum(num)
    range = create_collection(num)
    new_range = range.select{|num| multiple?(num)}
    sum = new_range.reduce(:+)
    sum
end

puts multisum(3)

puts multisum(5)
puts multisum(10)
puts multisum(1000)
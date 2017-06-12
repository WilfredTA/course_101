# Method that takes two integers as args
# First int is starting point, second int is ending point
# Method prints out all ints between two nums EXCEPT 
# When a num is divisible by 3, puts fizz, when by 5, puts buzz, 
# when by both 3 and 5, puts fizzbuzz

def fizzbuzz(num1, num2)
    string = ''
    nums = (num1..num2).to_a
    nums.each do |num|
        if num % 3 == 0 && num % 5 == 0
            string += "fizzbuzz "
        elsif num % 3 == 0
            string += "fizz "
        elsif num % 5 == 0 
            string += "buzz "
        else 
            string += num.to_s + ' '
        end
    end
    p string
end

fizzbuzz(1, 15)
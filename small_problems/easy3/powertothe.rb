#Returns the result of raising a number to a specified power using the implicit return of multiple and square methods


def multiply(num1, num2)
    num1 * num2
end

def square(n)
    multiply(n, n)
end

def power_to(num, power)
    result = num
    counter = 1
    loop do
        break if counter == power 
        result = multiply(result, num) 
        counter += 1
    end
    result
end

puts power_to(2, 4) 


#Notes
# At first, I had line 17 as result = multiply(result, result)
# This returned a much larger number because instead of returning
# 2*2*2*2, it was returning 2 * 2 * 4 * 16 * 16... As the square of 2 grew larger, 
# It was multiplied by itself rather than by 2 again
# Sometimes during loops, we set counter to 0 then increment
# In this method, counter must be set at 1 because it is there to allow as many loops as there are
# powers. But numbers first power to be raised to is the power of 1, not 0, so to begin at 0
# would allow 1 extra power raising
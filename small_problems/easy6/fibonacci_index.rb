#Write a method that calculates and returns the index of the first Fibonacci number 
#that has the number of digits specified as an argument. 
#(The first Fibonacci number has index 1.)

#The Problem
# Generate fibonacci sequence
# During each iteration, test if the number has digits == input integer
# Track each iteration, beginning with index 1
# Return the index number 

def fibonacci_index_by_length(digits)
  first = 1
  second = 1
  counter = 2
    
  loop do
    counter += 1
    fib_number = first + second
    break if fib_number.to_s.size >= digits
    first = second
    second = fib_number
  end
  
  counter
end

p fibonacci_index_by_length(2)

        

    

    
    
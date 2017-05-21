# Write a method that takes two arguments, a string and a positive integer and
# prints the string as many times as the integer indicates

def repeat(string, number)
    counter = 0 
    loop do
        break if counter == number
        puts string 
        counter += 1        
    end
end




#1 Understand the problem
    # Explicit
    # What if invalid data types?
    # What if string is empty, what if no argument?
    # Input: String and integer
    # Output: Displays the string on a new line integer times
    # Rules: Must take both a string and integer, integer must be positive

#2 Case/Examples
    #repeat('Hello', 3)
    # => Hello
    # => Hello
    # => Hello

#3 Data Structures
    #Input = string and number
    #Rules: Integer as limit of loop

#4 Algorithm
    # Print string until counter is equal to number
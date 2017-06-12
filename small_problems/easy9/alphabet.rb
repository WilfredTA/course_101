#Write a method that takes a string argument, and returns true if all of the

#alphabetic characters inside the string are uppercase, false otherwise.

#Characters that are not alphabetic should be ignored.

# Input is string
# Output is boolean
# Rules: true only if all alphabetic characters are uppercase 
# Ignore characters if they are not alphabetic


# Perform a test which checks the string for any lowercase characters and returns
# false if it finds any. 
# Compare string to fully uppercase version of itself

def alphabet(string)
   string == string.upcase
end

p alphabet('HELLO')
p alphabet('Hi I am me')
p alphabet('!!!!!') # Edge case
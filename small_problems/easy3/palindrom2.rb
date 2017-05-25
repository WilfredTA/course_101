# Returns true if argument is palidrome and false otherwise. Case and non-alphanumeric insensitive

# Same as before but must eliminate everything but alphanumeric chars
# Turn sring into array, select letters and numbers from array
# Turn array into string and compare this new string to its reversed self
# Select all elements that are a member of the alphabet and numbers with array


ALLOWED = %w( a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9)


def real_palindrome?(string)
    new_string = string.downcase.chars.select{|char| ALLOWED.include?(char)}.join
    new_string == new_string.reverse
end

puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?("Madam")
puts real_palindrome?("123a321")
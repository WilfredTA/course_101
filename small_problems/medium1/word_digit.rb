# Input is string
# Output is string but with any word numbers converted to digits

# Split string by word
# Transform this array matching with dictionary
# Join the array into a string


DICTIONARY = {"one" => 1, 
              "two" => 2,
              "three" => 3,
              "four" => 4,
              "five" => 5,
              "six" => 6,
              "seven" => 7,
              "eight" => 8,
              "nine" => 9,
              "zero" => 0}

def string_digit(string)
  digit_arr =  string.split(' ').map do |word|
    if DICTIONARY.keys.include?(word)
      word = DICTIONARY[word]
    else
      word
    end
  end
  
  digit_arr.join(' ')
end


p string_digit("Hello, call me at eight zero two five zero five one eight six six")
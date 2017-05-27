#Algorithm
# String to array of characters
# Iterate over array
# Match each character to a numeric value
# Place numeric value in new array
# How do I turn this array into one number?
# Possible method: Numeric has the advantage of performing mathematical operations
# Each element in array multiples base by 10
# Array with three elements represents number between 10**2 and 10**3

NUMBERS = {'1' => 1, 
           '2' => 2, 
           '3' => 3,
           '4' => 5, 
           '6' => 6, 
           '7' => 7, 
           '8' => 8, 
           '9' => 9, 
           '0' => 0}
           
def tointeger(string)
    array = string.chars.map{|char| NUMBERS[char]} 
    number = 0
    array.each{|num| number = 10 * number + num}
    number
end

p tointeger('1700')


# To signed number


def signednum(string)
  if string[0] != '-'
    tointeger(string[1 .. -1])
  else
    - tointeger(string[1 .. -1])
  end
end

p signednum('+1700')
p signednum('-1700')
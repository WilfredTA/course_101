# Takes a positive integer as input and outputs the reverse integer
# Drops everything less than or equal to zero

def reverse(int)
    int.to_s.chars.reverse.delete_if{|num| num.to_i <= 0}.join.to_i
end

p reverse(40506000)

def reversed_number(number)
  string = number.to_s
  digits = string.chars
  reversed_digits = digits.reverse
  reversed_string = reversed_digits.join('')
  reversed_string.to_i
end

p reversed_number(405060000)
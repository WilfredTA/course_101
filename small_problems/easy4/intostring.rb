DIGITS = %w(0 1 2 3 4 5 6 7 8 9)
def to_string(num)
  string = ''
  loop do
    num, remainder = num.divmod(10)
    string.prepend(DIGITS[remainder])
    break if num == 0
  end
    string
end

# Understanding the Problem
# Input is number
# Numeric properties: Non-indexed, can perform numeric operations
# Can identify remainders

# Algorithm
# Divide number by 10
# Get result and remainder
# Store result
# Set string first char to digits at index of remainder
# Do until result is equal to 0


p to_string(1000)
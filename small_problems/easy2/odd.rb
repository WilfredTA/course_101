#Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

#Understanding
# Iterate over a range of numbers (must convert range to array)
# Include minimun and maximum numbers in the range
# Print number on iteration on new line

(1..99).to_a.each{|num| puts num if num.odd?}
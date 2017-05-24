#Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

#Note: 1 square meter == 10.7639 square feet


def squaremeters(l, w)
    l * w
end

def squarefeet(meters)
    meters * 10.7639
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

squaredm = squaremeters(length, width)
squaredf = squarefeet(squaredm)

puts " The area of the room is #{squaredm} square meters (#{squaredf} squared feet)"
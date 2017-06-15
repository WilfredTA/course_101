#Write a method that displays a 4-pointed diamond in an n x n grid, 

#where n is an odd integer that is supplied as an argument to the method. 

#You may assume that the argument will always be an odd integer.


# Steps and Understanding the Problem
# Stars decrememnt by 2  
# Stars remain centered within the maximum length of the central line (i.e. the input number)
#    as they decrement



# Break it up 
# Decrementing suggests looping
# Write the manual process that must be looped in one method
# Automate it in a second method


def manual_star_placement(grid_size, distance_from_center)
    number_of_stars = grid_size - (2 * distance_from_center)
    stars = "*" * number_of_stars
    puts stars.center(grid_size)
end
# manual_stars will output the correct number of stars given how far the row is
# From the center row. The center row is 0 rows away from the center, so 0 would be 
# The second argument 

def automated_diamond(max_size)
    rows = max_size / 2 
    
    rows.downto(1) do |row_num|
        manual_star_placement(max_size, rows)
        rows -= 1
    end
puts "*" * max_size
    1.upto(max_size) do |row_num|
        manual_star_placement(max_size, row_num)
    end
end
# Automated diamond should perform two loops: 
# Outputting the top half of the diamond then 
# Automating the bottom half of the diamond


# Steps in programming: 
# First write a loop that outputs incremented rows
# Then do same for decrement
# Then center the lines



automated_diamond(9)
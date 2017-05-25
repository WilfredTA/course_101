#Write a method that takes a year as input and returns the century. 
#The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

#New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

#Understanding the problem
# Input is integer
# Output is the century of integer as string
# Century is every 100 years (implicit knowledge)
# Return value of string must have the proper suffix


#Points of challenge
# How to turn a number into its proper century
# Year /100 gives the right century when the number ends in 0
# When number ends in anything but 0, it rounds down
# Solution: if number ends in 0 then number/100 otherwise number/100 + 1
# Set this number as century.
# get last char of century and fetch the right suffix 
# fetches in a data structure that pairs chars with suffix --> hash



SUFFIX = { '1' => 'st', '2' => 'nd', '3' => 'rd', '4' => 'th', '5' => 'th', '6' => 'th', '7' => 'th', '8' => 'th', '9' => 'th', '0' => 'th'}

def century(year)
    if year % 10 == 0
        century = (year / 100)
    else
        century = year / 100 + 1
    end

    century = century.to_s

    SUFFIX.each do |char, suffix|
        if century.end_with?(char)
            century << suffix 
        end
    end
    century
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)

#Criticisms
# This method is too complex. It determines the century AND it finds and adds the correct suffix. A better solution would
# have been to divide this into two methods.
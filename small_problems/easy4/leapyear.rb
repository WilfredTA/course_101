#In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. 
#If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

#Assume this rule is good for any year greater than year 0. 
#Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

#The facts about the problem
# Rules: 
    # Leap years occur in every year divisible by: 
        # 4 and not 100 OR 400
# Input is integer
# Output is boolean that tests above disjunction and 
# returns truth value of disjunction

# Algorithm
# Gets integer
# tests integer against disjunction
# Returns truth value of disjunction

def leapyear1(number)
    (number % 400 == 0) ||
    (number % 4 == 0 && number % 100 != 0)
end



# leapyear part 2

#The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
#Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

def leap_year?(year)
    if year <= 1752
        year % 4 == 0
    else
        leapyear1(year)
    end
end


puts leap_year?(2016) #== true
puts leap_year?(2015) #== false
puts leap_year?(2100) #== false
puts leap_year?(2400) #== true
puts leap_year?(240000) #== true
puts leap_year?(240001) #== false
puts leap_year?(2000) #== true
puts leap_year?(1900) #== false
puts leap_year?(1752) #== true
puts leap_year?(1700) #== true
puts leap_year?(1) #== false
puts leap_year?(100) #== true
puts leap_year?(400) #== true
# Program should take an integer (either positive or negative)
# And return the time in integer minutes
# If number is negative, count back that many minutes from 24:00
# If number is positive, count up that many minutes from 00:00
# 0 returns 00:00

# Data structures
# Input is integer
# Output is a string
# Rules: 
    # Negative integer -> 24:00 - integer minutes
    # Positive integer -> 00:00 + integer minutes
    # 00:60 is the same as 01:00 and 00:60 represents the integer +60
    # Integer will have to be converted to minutes and hours
    # Hours represented as array to iterate over
    
# Algorithm
# Divide integer by 60 (produces amount of hours)
# Count back from 24 if negative
# Count up from 0 if positive
# Return hours
# Print out hours and remainder as the minutes
# How to handle > 1440 integers

HOURS = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS * MINUTES_PER_HOUR

def time_of_day(num)
  num = num.modulo(MINUTES_PER_DAY)
  hours, minutes = num.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(121)
p time_of_day(3000)
p time_of_day(-4231)
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

#Counts up from midnight
#Split into hours and minutes
# Total minutes is hours converted to minutes plus minutes
# Edge cases where minutes exceeds min per day?
# Solution: Remainder of quotient of total minutes / min per day

def before_midnight(str)
hours, minutes = str.split(':').map{|char| char.to_i}
time = hours * MINUTES_PER_HOUR + minutes
time % MINUTES_PER_DAY
end

# Counts down from midnight (24th hr)
# Get the amount of minutes and subtract from min per day

def after_midnight(str)
  minutes = MINUTES_PER_DAY - before_midnight(str)
  minutes = 0 if after_midnight(str) == before_midnight(str)
  minutes
end
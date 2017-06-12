#Write a method that takes a number as an argument. If the argument is a

#positive number, return the negative of that number. 

#If the number is 0 or negative, return the original number.

#Input is any number
# if the positive, return numbber times -1 
# If the number is 0 or negative, return number

def nozero(num)
   num > 0 ? -num : num 
end

p nozero(5)
p nozero(0)
p nozero(-4)
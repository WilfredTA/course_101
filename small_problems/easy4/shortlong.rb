#Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, 

#the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Both concatenation and character count are string properties, 
# Input best treated as string
# Take two strings
# Compare strings length
# concatenate short long short
# Return string

def countcat(str1, str2) #pun on count and concatenate
    if str1.length > str2.length
        str2 + str1 + str2
    else
        str1 + str2 + str1
    end
end

# It is not necessary to have more than one if and one else because we can define the rule implicitly
# If we were not assuming that they were different lengths, then we would have to define more conditions,
# However, since we only have two conditions (either str1 > str2 or str2 > str1) we can use the following logic:

# The proposition: Either (str1 > str2) or (str2 > str1)
# If str1 > str2 then execute operation 
# If str1 is not > str 2, then by disjunctive syllogism ((P v Q), -P, therefore Q)
# str2 > str1 so execute alternative operation
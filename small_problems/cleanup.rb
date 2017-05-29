# Replace all non-alphabetic characters with spaces
# If more than one non-alphabetic char occurs consecutively
# Only replace group of chars with one space 
# e.g. %^& should only be replaced with one space 
#i.e. result should never have consecutive spaces

#DAta structures and algorithm
# Use Regex
# sub all nonalphabetical chars with spaces (will also sub all spaces with new spaces)
# remove all extra spaces 


def cleanup(str)
   str.gsub(/[^a-z]/i, ' ').squeeze(' ') 
end
    p cleanup('Hello *&^ My frie*nd')
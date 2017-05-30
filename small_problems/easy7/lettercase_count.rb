#The problem
# Input is a string
# Output is hash with 3 keys: lowercase, uppercase, and neither
# values of hash keys are integers representing the count of each kind of char 



def lettercase(string)
    hash = {}
    hash[:lowercase] = string.count('a-z')
    hash[:uppercase] = string.count('A-Z')
    hash[:neither] = string.count('^a-z', '^A-Z')
    hash
end

p lettercase("Hello 123")

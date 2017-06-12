#Write a method that takes a first name, a space, and a last name passed as

#a single String argument, and returns a string that contains the last name, 

#a comma, a space, and the first name.

def nameswap(name)
    name_reverse = []
    nameary = name.split(' ')
    counter = 1 
        loop do 
            name_reverse << nameary[counter]
            counter -= 1
            break if counter < 0
    end
    
    name_reverse.join(', ')
end

p nameswap('Bob Joe')

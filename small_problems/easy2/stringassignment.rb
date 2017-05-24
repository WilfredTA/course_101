name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#The following code will print out "BOB" twice because upcase! is 
# a destructive method and therefore variable name is never reassigned to a new object
# in memory.
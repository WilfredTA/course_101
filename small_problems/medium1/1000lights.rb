# Input is a hash of 1000 keys with all values "on"
# Output is an array of keys with values on
# Output array is determined by the following rules: 
    # Do the following 1000 times
        # iterate through hash, assigning every other key its opposite value 
        # Beginning light should increment after every iteration
    # After 1000 iterations, do the following
        # Select from hash all keys whose values are "on"


def light_switcher(lights)
    1.upto(lights.size) do |light_num|
        1.upto(lights.size) do |num|
            if num % light_num == 0
                lights[num] == "off" ? lights[num]="on" : lights[num]="off"
            end
        end
    end
    lights
end

def get_on_lights(lights)
    lights.keys.select{|num| lights[num] == "on"}
end

light_hall = Hash.new
1.upto(5){|num| light_hall[num] = "off"}
light_switcher(light_hall)
p get_on_lights(light_hall)
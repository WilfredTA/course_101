# Determine the ascii value of any string
# ascii value = the sum of the ascii values of the chars in the string
# must iterate over chars and add to a running sum

def ascii_value(string)
    value = 0
    string.chars.each do |char|
        value = value + char.ord
    end
    value
end

p ascii_value('Four score') == 984
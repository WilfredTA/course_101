def repeater(string)
    new_string = ''
    string.chars.each do |char|
        new_string << char << char
    end
    new_string
end

p repeater("Good Job!!")

def consonant_repeater(string)
    new_string = ''
    string.chars.each do |char|
        if char =~ /\p{alpha}/ && char =~ /[^aeiouAEIOU]/
            new_string << char << char
        else
            new_string << char
        end
    end
    new_string
end

p consonant_repeater("String1")
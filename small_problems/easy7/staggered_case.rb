#Takes string and returns same string with every other letter capitalized
# String to array of lowercase chars, iterate over array, upcase every other char

#NOTE: This method satisfied LaunchSchool's staggered case exercise part 1 and 2

def staggered(string)
    chars = string.downcase.chars
    
    chars.each_with_index do |char, idx|
        if idx.odd? && char =~ /[a-zA-Z]/
            char.upcase!
        end
    end
    
    chars.join
end

p staggered('Hello There friend #4')
    
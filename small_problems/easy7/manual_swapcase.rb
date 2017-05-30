# Takes a string as input
# EVery uppercase letter becomes lowercase
# Every lowercase letter becomes uppercase
# Output new string

# string into array
# iterate over array
# If char is downcase, upcase
# If char is upcase, downcase



def manual_swapcase(str)
    chars = str.chars.map do |char|
        if char =~ /[A-Z]/
            char.downcase
        elsif char =~ /[a-z]/
            char.upcase
        else
            char
        end
    end
    chars.join
end

p manual_swapcase("Hello my NAME is tANNR")
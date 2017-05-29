def triangle(int)
    count = 1
    spaces = int - 1
    loop do
        puts "#{' ' * spaces}" +  "#{'*' * count}" 
        break if count == int
        count += 1
        spaces -= 1
    end
end

triangle(9)
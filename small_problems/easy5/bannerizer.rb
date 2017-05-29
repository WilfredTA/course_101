

def initializebox(str)
    bar = "+#{'-' * (str.size + 2)}+"
    empty_line = "|#{' ' * (str.size + 2)}|"
    
    puts bar
    puts empty_line
    puts "| #{str} |"
    puts empty_line
    puts bar
end



puts initializebox("MY name is fred flintstone")
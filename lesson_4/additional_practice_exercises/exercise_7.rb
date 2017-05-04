statement = "The Flintstones Rock"

frequency = {} 
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
    letter_count = statement.scan(letter).count 
    frequency[letter] = letter_count if statement.scan(letter).count != 0
end

p frequency
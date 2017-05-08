hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u)

hsh.each do |k, v| 
    vowels.each do |vowel|
        v.each do |word|
            puts vowel if word.include?(vowel)
        end
    end
end
                
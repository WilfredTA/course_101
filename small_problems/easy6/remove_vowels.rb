#Input is an array of letters. Remove all vowels from array
# Iiterate over array, select all elements that are not vowels

VOWELS = %W(a e i o u)

def delete_vowels(arr)
    arr.map do |string|
        string.delete('aeiouAEIOU')
    end
end

p delete_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p delete_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
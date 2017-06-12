#Write a method that returns a list of all substrings of a string that
#start at the beginning of the original string. 
#The return value should be arranged in order from shortest to longest substring.

# input is string
# Output is array
# Algorithm
# turn string into array of chars
# Iterate over array, get objects at index 0 to current index 
# turn objects into array, 
# place that array into new array

def substring(string)
    sub_strings = []
    chars = string.chars
    0.upto(chars.size - 1) do |count|
        sub_strings << chars[0..count].join
    end
    sub_strings
end
    
    
def substrings2(string)
      new_list = []
      string.chars.each_with_index do |char, idx|
         new_list << substring(string[idx..-1])
         end
       new_list.flatten
end
            
    p substrings2('abcde')
    
def palindromic_subs(string)
    palindromics = []
   substrings2(string).each do |sub|
     if sub.chars == sub.chars.reverse && sub.chars.size > 1
       palindromics << sub
     end
   end
   palindromics
end

p palindromic_subs('knitting cassettes')

#Write an or method that only returns true if one operand is true and the other is false

def xor?(boolean1, boolean2)
    !boolean1 != !boolean2
end

puts xor?(5.even?, 4.even?) #true
puts xor?(5.odd?, 4.odd?) #true
puts xor?(5.odd?, 4.even?) #false
puts xor?(5.even?, 4.odd?) #false

#Any objects that are either both truthy or both falsey
# will cause the method to return false. Any scenario
# wherein one object is truthy and one is falsey will result in the
# method returning true





#This limits the words you can spell with the blocks to just those words that 
#do not use both letters from any given block. Each block can only be used once.

#Write a method that returns true if the word passed in as an argument can be
#spelled from this set of blocks, false otherwise.


#       STEP 1: UNDERSTAND THE PROBLEM
# Input is a string
# Output is a boolean
# Rules: Return true if: 
            # 1. String can be constructed by some combination of the letters in the collection
            # 2. And no more than 1 letter is used from a pair if that pair is used
# PRINCIPAL PARTS: 
    #1. The string -- known
    #2. The collection -- known
    #3. The return value -- known
    #4. The rule that connects the collection to the string to determine return value -- unknown
    
    
#       STEP 2: HUNTING FOR IDEAS/DESIGNING A SOLUTION
# Going from input to output, we know the following:
  # Input received, a test is performed on the string using the collection, this tests returns a boolean
  # The test has to check each letter of the string: Iteration
  # What does it do with each letter? It checks if the letter is a member of a pair that has already been used 
  
  # Describe the collection: 
    # Array of string; each string is a character pair
    
# ALGORITHM
  # 1. Initialize collection
  # 2. Set tracker = true
  # 2. Get input
  # 3. Iterate over chars, for each char, do: 
      # iterate over collection
        # check if pair in collection contains char
        # If yes, delete pair and skip to next char
        # Otherwise set tracker = false
  #4 return value of tracker
  
  
def spell_check(string)
    string.downcase!
    block = ['bo','xk','dq', 'cp','na',
             'gt' ,'re', 'fs', 'jw', 'hu',
             'vi', 'ly', 'zm']
  tracker = false
    
  string.chars.each do |char|
    tracker = false # set to false as default value
    block.each do |pair| #check if a pair in the block contains char, returns true if so; otherwise leaves tracker unmodified
      if pair.include?(char)
        block.delete(pair)
        tracker = true 
      end
    end
  end
  tracker
end
        
  p spell_check('BATCH')
  p spell_check('BUTCH')
  p spell_check('jest')
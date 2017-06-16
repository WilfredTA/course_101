#Write a program that reads the content of a text file and then prints the longest 

#sentence in the file based on number of words. 

#Sentences may end with periods (.), exclamation points (!), or question marks (?).

#Any sequence of characters that are not spaces or sentence-ending characters 

#should be treated as a word. You should also print the number of words in the longest sentence.


#               STEP 1: UNDERSTAND THE PROBLEM
# Reads content
# Prints something within content 
        # Longest sentence 
            #Criterion: word count
            # Sentences separated by '.', '?', or '!'
        # Number of words in the longest sentence
        
# PRINCIPAL PARTS: 
# INPUT: TEXT
# OUTPUT: LONGEST SENTENCE AND AN INTEGER LENGTH OF LONGEST SENTENCE
# CRUCIAL OPERATIONS: DIVIDE TEXT INTO SENTENCES; GET THE LENGTH OF A SENTENCE; 
                    # COMPARE LENGTH OF SENTENCES; OUTPUT THE SENTENCE AND ITS LENGTH
                    
# What you have: The text 
# What you need: The longest sentence and its length

#               STEP 2: HUNT FOR IDEAS; COME UP WITH A SOLUTION

# The principal parts are the areas of focus... Arrange them and develop each
# ALGORITHM
    #1. Get input 
    #2. Divide input into sentences, using sentence separation criterion
    #3. Store sentences in a collection
    #4. Determine length of a sentence
    #5. Iterate over collection, comparing the length of sentences
    #6. Return the sentence with the greatest length.
    #7 Get the sentence's lengtth 
    #8. Output the sentence and its length.
    
    
#               STEP 3: EXECUTE THE PLAN
# NOTES: Start from the ideas had in step 2. Ask yourself: Can the idea(s) in step 2
    # bring you from what you have to what you need? 
    # Carry through the operations that instantiate the general ideas in step 2. 
    # Test each insntantiation
    
    
    
def sentence_splitter(text) # Returns an array of sentences
    sentences = []
    since_last_sentence = 0
    
    characters = text.chars
    characters.each_with_index do |char, index|
        case char 
            when "."
                sentences << characters[since_last_sentence..index + 1]
                since_last_sentence = index + 2
            when "!"
                sentences << characters[since_last_sentence..index + 1]
                since_last_sentence = index + 2
            when "?"
                sentences << characters[since_last_sentence..index + 1]
                since_last_sentence = index + 2
        end
    end
    sentences.map{|sentence| sentence.join('')}
end
    
def sentence_length(text)
   collection = sentence_splitter(text)
  collection =  collection.map{|subarr| subarr.split}
  collection.sort_by!{|subarr| subarr.size}
  size = collection[-1].size
  longest_sentence = collection[-1].join(' ')
  puts "The longest sentence is '#{longest_sentence} ' with a size of #{size} words."
end


 sentence_length("")
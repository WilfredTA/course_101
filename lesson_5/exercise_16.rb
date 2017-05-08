
def generate_id
    char_selections = ['a' .. 'f']
    num_selections = [0 .. 9]
    full_selection = []
    selection_increments = [8, 4, 4, 4, 12]
    uuid = ""
    
    char_selections.each do |char|
        full_selection << char
    end
    
    num_selections.each do |num|
        full_selection << num.to_s
    end
    
    selection_increments.each do |inc|
        inc.times do 
            uuid += full_selection.sample.to_s
            uuid += '-' if uuid.size == inc
        end
            
    end
    
    puts uuid
   
end

generate_id
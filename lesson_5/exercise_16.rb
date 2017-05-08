
def generate_id
    char_selections = ['a' .. 'f']
    num_selections = [0 .. 9]
    full_selection = char_selections.concat(num_selections)
    uuid_1 = ''
    uuid_2 = ''
    uuid_3 =''
    uuid_4 = ''
    uuid_5 =''
    uuid_values_1 = []
    uuid_values_2 = []
    uuid_values_3 = []
    uuid_values_4 = []
    uuid_values_5 = []
    counter = 0
    
    loop do
        break if counter == 8
        uuid_values_1 << full_selection.sample
        counter += 1
    end
    
    counter = 0
    loop do
        break if counter == 4
        uuid_values_2 << full_selection.sample
        counter += 1
    end
    counter = 0
    loop do
        break if counter == 4
        uuid_values_3 << full_selection.sample
        counter += 1
    end
    counter = 0
    loop do
        break if counter == 4
        uuid_values_4 << full_selection.sample
        counter += 1
    end
    counter = 0
    loop do
        break if counter == 12
        uuid_values_5 << full_selection.sample
        counter += 1
    end
    
   full_values = uuid_values_1.concat(uuid_values_2.concat(uuid_values_3.concat(uuid_values_4.concat(uuid_values_5))))
    
    
    full_values.each_with_index do |(charnum), idx = 7|
        uuid_1 << charnum
    end
    full_values.each_with_index(offset = 8) do |(charnum), idx = 11|
            uuid_2 << charnum
    end
    full_values.each_with_index(offset = 9) do |(charnum), idx = 13|
            uuid_3 << charnum
    end
    full_values.each_with_index(offset = 10) do |(charnum), idx = 17|
            uuid_4 << charnum
    end
    full_values.each_with_index(offset = 11) do |(charnum)|
            uuid_5 << charnum
    end
    
    uuid = "#{uuid_1}- #{uuid_2}- #{uuid_3}- #{uuid_4}- #{uuid_5}"
    puts uuid
   
end

generate_id
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

def modify(hash)
    hash.map do |k, v|
        if v[:type] == 'fruit'
            v[:colors].map do |color|
                color.capitalize
            end
        else
            v[:size].upcase
        end
    end
end

p modify(hsh)
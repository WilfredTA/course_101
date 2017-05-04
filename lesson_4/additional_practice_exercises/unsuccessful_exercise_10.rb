#1. Iterate over each key and access value each iteration
#2 Add age group key
#3 Age group value if age is within range


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


def age_group(hash)
  hash.each do |name, personal_data| 
    puts name
    personal_data.each do |key, value|
      if value.integer? && value < 17
        personal_data[:age_group] = "kid"
      elsif value.integer? && value > 17 && value < 65
        personal_data[:age_group] = "adult"
      elsif value.integer? && value > 17
        personal_data[:age_group] = "senior"
      else
        next
      end
    end
  end
end

p age_group(munsters)

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
  hash.each do |name, data|
    case data["age"]
    when 0...18
      data["age_group"] = "kid"
    when 18 ... 65
      data["age_group"] = "adult"
    else
      data["age_group"] = "senior"
    end
  end
end

p age_group(munsters)

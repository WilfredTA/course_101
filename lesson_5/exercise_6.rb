munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


def get_age(hash) 
    hash.each do |k,v|
       age =  v["age"]
       age
    end
end

def get_gender(hash)
    hash.each do |k,v| 
        gender = v["gender"]
        gender
    end
end

munsters.each do |k,v|
   puts "#{k}" + " is" + " #{v["age"]} years old and is a " + "#{v["gender"]}"
end
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
shortened_flin = []

flintstones.map do |name|
    shortened_flin << name[0, 3]
end

p shortened_flin
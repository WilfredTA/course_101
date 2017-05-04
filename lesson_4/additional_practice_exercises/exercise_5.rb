flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |names| names[0, 2] == "Be" }
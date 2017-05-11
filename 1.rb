hash = {"x": 1, "y":2}

puts "#{hash}\n"
hash[:z]=3
puts "#{hash}\n"
hash[:x]=5
puts "#{hash}\n"
hash.delete(:y)
puts "#{hash}\n"
puts (hash.key?(:z)) ? "Yeahhhhh\n":false
puts "#{hash}\n"
hash = hash.invert
puts "#{hash}\n"

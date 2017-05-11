restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts "El plato mas caro es #{restaurant_menu.key(restaurant_menu.values.max)} y cuesta #{restaurant_menu.values.max}\n"
puts "El plato mas barato es #{restaurant_menu.key(restaurant_menu.values.min)} y cuesta #{restaurant_menu.values.min}\n"

puts "El promedio de los precios es: #{restaurant_menu.values.inject(:+)/restaurant_menu.values.size}\n"

name = restaurant_menu.keys
price = restaurant_menu.values

print "#{name}\n"
print "#{price}\n"

restaurant_menu.update(restaurant_menu){ |key,value| (value*1.19).round(2)}

print "#{restaurant_menu}\n"

restaurant_menu.update(restaurant_menu){ |key,value| ((key.strip.include? " ") ? (value - (value*0.2)).round(2):value)}

print "#{restaurant_menu}\n"
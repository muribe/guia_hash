inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
loop do
    puts "1.- Ingresar Item"
    puts "2.- Ver Stock"
    puts "3.- Ver Item con mayor stock"
    puts "4.- Buscar item"
    puts "5.- Salir"
    puts "Ingrese opción:\n"
    op = gets.chomp
    case op
    when "1"
        puts "Ingresar Item y Valor separado por una coma"
        item = gets.chomp.split(',')  
        inventario[item[0]] = item[1]
        print "#{inventario}\n"
    when "2"
        puts "La suma total de stock es: #{inventario.values.inject(:+)}\n"
    when "3"
        puts "El articulo con mas stock es #{inventario.key(inventario.values.max)} y tiene #{inventario.values.max}\n"
    when "4"
        puts "Ingresar nombre de item a buscar\n"        
        search = gets.chomp
        puts (inventario.key?(search.to_sym)) ? "Si\n":"No\n"
    when "5"        
        break
    else
      puts "Opción no valida!"
    end        
end 
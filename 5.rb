data = {
    "0"=>{
         "nombre":"myckel",   
         "pais": "chile",
         "continente":"america",
         "genero":"masculino"   
        },
    "1"=>{
         "nombre":"camila",   
         "pais": "españa",
         "continente":"europa",
         "genero":"femenino"   
        },
    "3"=>{
         "nombre":"eduardo",   
         "pais": "japon",
         "continente":"asia",
         "genero":"masculino"   
        },
    "4"=>{
         "nombre":"pedro",   
         "pais": "rusia",
         "continente":"europa",
         "genero":"masculino"   
        },
    "5"=>{
         "nombre":"ana",   
         "pais": "argentina",
         "continente":"america",
         "genero":"femenino"   
        },
    "6"=>{
         "nombre":"pedro",   
         "pais": "portugal",
         "continente":"europa",
         "genero":"masculino"   
        },
    "7"=>{
         "nombre":"alejandra",   
         "pais": "usa",
         "continente":"america",
         "genero":"femenino"   
        },
    "8"=>{
         "nombre":"james",   
         "pais": "nigeria",
         "continente":"africa",
         "genero":"masculino"   
        },

    }

puts "El tamaño del hash es #{data.size}\n" 
continente = []
data.each { |key, value| continente.push(value[:continente].downcase) }
continente.uniq!
print "#{continente}\n"
pedro = []
data.each { |key, value| ((value[:nombre].downcase=="pedro") ? (pedro.push(value)):false) }
print "#{pedro}\n\n"
female=[]
male=[]
data.each { |key, value| ((value[:genero].downcase=="masculino") ? (male.push(value)):(female.push(value))) }
print "#{male}\n\n"
print "#{female}\n\n"

new_hash=Hash.new {|h,k| h[k]=[]}

continente.each do |value| 
    data.each do |key, value2|  
       (value2[:continente].downcase==value) ? new_hash[value] << value2[:pais] : false  
    end
end
print "#{new_hash}\n"

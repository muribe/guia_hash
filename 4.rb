def edad(hash)
    return hash.values
end
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

personas_hash = Hash[personas.zip(edad)]
print "#{personas_hash}\n" 
print "#{edad(personas_hash)}\n"
puts "Leyendo el valor de temperatura en Celsius del archivo de datos..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
File.write("temp.out", fahrenheit)
puts "Guardando el resultado en el archivo de salida 'temp.out'"
puts "El valor de temperatura en Fahrenheit es: #{fahrenheit}"
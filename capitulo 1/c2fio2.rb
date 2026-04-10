puts "Leyendo el valor de temperatura en grados Fahrenheit del archivo de datos... "
fahrenheit = File.read("temp.dat").to_i
celsius = (fahrenheit - 32) * 5 / 9
puts "Guardando el resultado en el archivo de salida 'temp2.out'"
File.write("temp2.out", celsius)
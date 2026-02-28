# Lectura y practica del Libro The Well-Grounded Rubyist  

![Portada de Libro](https://github.com/eduardotejeda/The-Well-Grounded-Rubyist/blob/main/BookCover%20TWGR.jpg)

# Prefacio

Esta edición se enfoca en la versión 2.5 de Ruby (en este momento va por la versión 3.7). 

Ruby es un lenguaje de programación interpretativo multiproposito, orientado a objeto. Su creador es Yukihiro "Matz" Matsumoto y fue anunciado por primera vez en 1993 y su primera version salió en 1995.

>Un lenguaje de programación interpretado es aquel en el que el código que escribes (el código fuente) no se traduce completamente a lenguaje máquina antes de ejecutarse. En cambio, se ejecuta línea por línea (o instrucción por instrucción) gracias a un programa especial llamado intérprete.

![Programación Orientada a Objetos](https://github.com/eduardotejeda/The-Well-Grounded-Rubyist/blob/main/Programaci%C3%B3n%20orientada%20a%20objetos.jpg)

Tiene un framework muy popular llamado Ruby on Rails usado para crear aplicaciones web modernas (backend + base de datos). Creado por David Heinemeier Hansson (en 2004–2005).


## Capítulo 1: Impulsando tu alfabetización en Ruby

Este capítulo divide al lenguaje de programación Ruby en tres partes fundamentales:

1. Lenguaje base: principios de diseño, sintaxis y semántica. 

2. Extensiones y librerías que trae Ruby de fábrica, y las opciones para agregar por nuestra cuenta.

3. Herramientas de comandos que trae de fábrica Ruby, con las que corres el intérprete y otras funciones importantes.

Ruby en mayúscula es el nombre, ruby en minúscula es como se llama el intérprete y RUBY no es un acrónimo, no existe.

## 1.1 

### 1.1.1 Instala y ejecuta Ruby

Ruby se descarga de la [página oficial.](https://www.ruby-lang.org/en/)

La forma más básica de ejecutar código es con la consola interactiva de Ruby _irb_, la abres en terminal y copias tu código ahí. Ejemplo en Windows:

![Ejemplo irb en Windows](https://github.com/eduardotejeda/The-Well-Grounded-Rubyist/blob/main/irb%20ejemplo.jpg)

### 1.1.2 Sintaxis 

### Aritmética 

```2+3``` (adicción)
```2-3``` (sustracción)
```2*3``` (multiplicación)
```2/3``` (división)
```2/3.0``` (división, punto flotante)

Estas operaciones funcionan con números enteros y decimales.

### Asignación 
```
x = 1
Springs = "hello"
```
Es símbolo de "=" asigna el objeto de la derecha a la variable de la izquierda. El objeto es un valor que es representado por la variable

### Comparación de dos valores

```X == Y``` se usando dos símbolos de "==".

### Convertir un texto numérico a número
```
x = "100".to_i
S = "100"
X = S.to_i
```
La aritmética en Ruby solo funciona si los datos son tipo número. Para convertir un texto a número se usa el método ".to_i" al final de la variable o texto que se quiera convertir.

### Entrada y salida
```
print "hello"
puts "hello"
```
```
x = "hello"
p x
```
puts agrega una nueva línea en pantalla, print no. 

La p ejecuta un inspector de texto que d información extra de lo que se imprime.
```
gets
Springs = gets
```
Activa la entrada del teclado cuando se usa. En este ejemplo se asigno a una variable. El cursor va esperar que el usuario introduzca con el teclado.
```
x = 1
y = 1
if x == y
     puts "yes!"
else
      puts "no!"
end
```
Los enunciados condicionales termina con la palabra end.

### Objetos con valores especiales

```
true
false
nil
```

Los objetos ```true``` y ```false``` por  lo general son el retorno de enunciados condicionales. El objeto ```nil``` representa la ausencia de valor o resultado.

```false``` y ```nil``` hacen que un enunciado condicional tenga el resultado falso. Todos los demás, ```true``` o hasta ```0``` o texto vacío, dan un resultando positivo.

### self

La palabra clave ```self``` se refiere al objeto por defecto. Self es un rol que múltiples objetos pueden tener, dependiendo del ambiente en que se ejecutan. Las llamas de métodos que específicamente llaman a un objeto se llaman self.

### Comentarios 

```
# A comment
x = 1 # A comentar 
```

Los comentarios son ignorados por el intérprete.

## 1.1.3 Identificadores de Ruby

1. Variable: local, instancia, clase y global
2. Constantes
3. Palabras claves
4. Nombre de métodos

Estos son los tipos de elementos que encontraremos en un programa de Ruby. Hay que saber reconocerlos.

### Variables locales

Empiezan en minúscula o con underscore; la convención en Ruby es escribir las palabras separadas con "_". 

Ejemplo: ```first_name```

### Variables de instancia

Cumplen con el propósito de almacenar información dentro de un objeto individual. Siempre empiezan con "@" y siguen las mismas reglas de escritura de las variables locales.

Ejemplo: ```@las_name```

### Variables de clase

Almacena la información de la jerarquía de clases; siguen las mismas reglas que las variables de instancia, salvo que empiezan con doble @@.

Ejemplo: ```@@total_usuarios```

### Variables globales 

No siguen la convención de las variables locales. Siempre empiezan con el signo de "$". 

Ejemplo: ```$:, $1, $LOAD_PATH```


### Constantes

La convención establece que deben empezar con mayúscula. Y si es larga se puede usar tipo camello o con subrayar. Ejemplos:
```FIRST_NAME``` y ```FirstName```. 

### Palabras clave

Ruby tiene muchas palabras clave predefinidas. Como ```def``` para definición de métodos, ```class``` para definición de clase, ```if``` condicional y ```__FILE__``` da el nombre del archivo que está ejecutando. Hay unas 40.

### Nombre de métodos

Los nombres de los métodos en Ruby siguen las mismas reglas que las variables locales (excepto que pueden terminar en ?, ! o =). Por diseño los métodos no deben llamar la atención en el texto.

### 1.1.4 Llamada de métodos, mensajes y objetos en Ruby

Ruby ve a todas las estructuras-- desde los tipos de datos escalares que representan un único valor atómico, hasta las estructuras complejas como las matrices -- como objetos. 

>Los tipos de datos escalares en programación representan un único valor atómico, a diferencia de las estructuras complejas. Los principales tipos escalares son enteros (int), números de punto flotante/decimales (float/double), booleanos (bool, verdadero/falso) y caracteres (char), fundamentales para operaciones básicas, cálculos y lógica.

Cada objetos es capaz de entender una determinada cantidad de mensajes. Cada mensaje que un objeto entiendo corresponde a un método, una rutina ejecutable con nombre cuya ejecución el objeto tiene la capacidad de activar

Los objetos son representados por constructores literales -- como las doble comillas "" en una cadena de caracteres, un tipo de dato utilizado para representar texto -- o variables a las que han sido enlazadas.   

El enviado de los mensajes se logra con el operador especial punto ".": el mensaje a la derecha del "." es enviado al objeto a la izquierda del punto.( Hay otras formas de enviar mensajes a objetos, pero el "." es el mas común). Recordemos el ejemplo anteriorÑ

```x = "100".to_i```

El punto indica que el mensaje ```to_i``` esta siendo enviado a la cadena de caracteres ```"100"```. El ```"100"``` es el receptor del mensaje. También podemos decir que se llama al método to_i en la cadena "100". El resultado de la llamada al método (el entero 100) sirve como el lado derecho de la asignación a la variable x. 
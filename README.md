# Lectura y practica del Libro The Well-Grounded Rubyist

![Portada de Libro](https://github.com/eduardotejeda/The-Well-Grounded-Rubyist/blob/main/BookCover%20TWGR.jpg)

# Prefacio

Esta edición se enfoca en la versión 2.5 de Ruby (en este momento va por la versión 3.7).

Ruby es un lenguaje de programación interpretativo multiproposito, orientado a objeto. Su creador es Yukihiro "Matz" Matsumoto y fue anunciado por primera vez en 1993 y su primera version salió en 1995.

> Un lenguaje de programación interpretado es aquel en el que el código que escribes (el código fuente) no se traduce completamente a lenguaje máquina antes de ejecutarse. En cambio, se ejecuta línea por línea (o instrucción por instrucción) gracias a un programa especial llamado intérprete.

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

`2+3` (adicción)
`2-3` (sustracción)
`2*3` (multiplicación)
`2/3` (división)
`2/3.0` (división, punto flotante)

Estas operaciones funcionan con números enteros y decimales.

### Asignación

```
x = 1
Springs = "hello"
```

Es símbolo de "=" asigna el objeto de la derecha a la variable de la izquierda. El objeto es un valor que es representado por la variable

### Comparación de dos valores

`X == Y` se usando dos símbolos de "==".

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

La p ejecuta un inspector de texto que da información extra de lo que se imprime.

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

Los objetos `true` y `false` por lo general son el retorno de enunciados condicionales. El objeto `nil` representa la ausencia de valor o resultado.

`false` y `nil` hacen que un enunciado condicional tenga el resultado falso. Todos los demás, `true` o hasta `0` o texto vacío, dan un resultando positivo.

### self

La palabra clave `self` se refiere al objeto por defecto. Self es un rol que múltiples objetos pueden tener, dependiendo del ambiente en que se ejecutan. Las llamas de métodos que específicamente llaman a un objeto se llaman self.

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

Empiezan en minúscula o con underscore; la convención en Ruby es escribir las palabras separadas con "\_".

Ejemplo: `first_name`

### Variables de instancia

Cumplen con el propósito de almacenar información dentro de un objeto individual. Siempre empiezan con "@" y siguen las mismas reglas de escritura de las variables locales.

Ejemplo: `@las_name`

### Variables de clase

Almacena la información de la jerarquía de clases; siguen las mismas reglas que las variables de instancia, salvo que empiezan con doble @@.

Ejemplo: `@@total_usuarios`

### Variables globales

No siguen la convención de las variables locales. Siempre empiezan con el signo de "$".

Ejemplo: `$:, $1, $LOAD_PATH`

### Constantes

La convención establece que deben empezar con mayúscula. Y si es larga se puede usar tipo camello o con subrayar. Ejemplos:
`FIRST_NAME` y `FirstName`.

### Palabras clave

Ruby tiene muchas palabras clave predefinidas. Como `def` para definición de métodos, `class` para definición de clase, `if` condicional y `__FILE__` da el nombre del archivo que está ejecutando. Hay unas 40.

### Nombre de métodos

Los nombres de los métodos en Ruby siguen las mismas reglas que las variables locales (excepto que pueden terminar en ?, ! o =). Por diseño los métodos no deben llamar la atención en el texto.

### 1.1.4 Llamada de métodos, mensajes y objetos en Ruby

Ruby ve a todas las estructuras-- desde los tipos de datos escalares que representan un único valor atómico, hasta las estructuras complejas como las matrices -- como objetos.

> Los tipos de datos escalares en programación representan un único valor atómico, a diferencia de las estructuras complejas. Los principales tipos escalares son enteros (int), números de punto flotante/decimales (float/double), booleanos (bool, verdadero/falso) y caracteres (char), fundamentales para operaciones básicas, cálculos y lógica.

Cada objetos es capaz de entender una determinada cantidad de mensajes. Cada mensaje que un objeto entiendo corresponde a un método, una rutina ejecutable con nombre cuya ejecución el objeto tiene la capacidad de activar

Los objetos son representados por constructores literales -- como las doble comillas "" en una cadena de caracteres, un tipo de dato utilizado para representar texto -- o variables a las que han sido enlazadas.

El enviado de los mensajes se logra con el operador especial punto ".": el mensaje a la derecha del "." es enviado al objeto a la izquierda del punto.( Hay otras formas de enviar mensajes a objetos, pero el "." es el mas común). Recordemos el ejemplo anteriorÑ

`x = "100".to_i`

El punto indica que el mensaje `to_i` esta siendo enviado a la cadena de caracteres `"100"`. El `"100"` es el receptor del mensaje. También podemos decir que se llama al método to_i en la cadena "100". El resultado de la llamada al método (el entero 100) sirve como el lado derecho de la asignación a la variable x.

### ¿Por que la doble terminología?

En Ruby, es mas correcto decir, se manda un mensaje a un objeto que lo recibe, y el objeto ejecuta el método correspondiente. Pero a veces no hay método correspondiente. Puedes poner cualquier cosa en el lado derecho del punto ".", y no hay garantía al recibirlo tendrá un método que coincida con el mensaje enviado.

Suena caótico, pero no lo es, porque los métodos pueden interceptar mensajes desconocidos y tratar de darles sentido. Esto es casi siempre logrado usando el método `method_missing` explicado en el capítulo 4. Ruby on Rails usa mucho esa técnica.

Los métodos pueden tener argumentos, que también son objetos. Casi todo es un objeto en Ruby; aun hay unas estructuras semánticas que ayudan a crear y manipular objetos; esas estructuras no lo son. Aquí un ejemplo de un llamado a un método con paréntesis:

`x = "100".to_is(9)`

Ese argumento 9 genera un decimal entero equivalente a 100 en base 9: el resultado sería 81 decimal.

Ese ejemplo muestra los paréntesis alrededor del argumento "(9)"; esos paréntesis son opcionales, pero en operaciones más complejas es mejor agregarlos para hacer el texto más entendible.

Todo el universo de Ruby consiste en objetos y mensajes que son enviados a ellos. La mayor parte del tiempo como programador de Ruby consiste en definir métodos (decirles qué van a hacer) y mandando mensajes a métodos (ordenándoles que hagan algo).

También, para hacer llamadas de métodos, existe el bareword-style invocations.

Cuando escribimos:

`puts "Hello"`

Le estamos diciendo a Ruby que mande el mensaje puts con el argumento "Hello" al objeto por defecto self. A menudo hay un self cuando el programa corre.

El concepto de objeto en Ruby es lo más importante. Seguido del concepto de clases.

`self.puts("Hello")`

### El origen de los objetos en las clases

Las clases definen la funcionalidad de un objeto, y cada objeto es una instancia de exactamente una clase. Ruby trae un gran número de clases de fábrica, que representan tipos de datos como caracteres, listas y enteros. Cada vez que creamos un objeto carácter, creamos una instancia de la clase string.

Los objetos pueden cambiar, adquiriendo métodos y comportamientos que no fueron definidos en su clase. La clase es responsable de llevar un objeto a la existencia, en un proceso llamado instantiation (instanciar), pero después de ahí el objeto tiene vida propia.

La capacidad de un objeto de adoptar comportamientos fuera de su clase es uno de los principios fundamentales en Ruby.

## 1.1.5 Escribiendo y salvando un programa simple

Inicia con un convertidor de temperatura de Celsius a Fahrenheit, no usaremos números flotantes para simplificar el ejemplo. Este ejemplo sera usado multiples veces a medida que avancemos.

- Ordenar la salida del programa
- Aceptar entrada por teclado
- Leer datos desde un archivo
- Escribir el resultado en un archivo

### 1.1 Primer ejemplo de convertidor de temperatura (nombre del archivo c2f.rb)

```
celsius = 100
fahrenheit = (celsius * 9 / 5) + 32
puts "La temperatura en Fahrenheit es: "
puts fahrenheit
puts "."
```

## 1.1.6

Para correr un programa en Ruby consiste en pasar el código fuente a través de un intérprete, que es llamado `ruby`. Si el programa tiene un error de sintaxis, dará un código de error al final de la ejecución.

Si se quiere revisar la sintaxis antes de ejecutar, usar `-cw`:

`$ ruby -cw c2f.rb`

El `-cw` es una abreviatura de dos indicadores: El `-c` significa busca errores de sintaxis y el `-w` le indica a Ruby que eleve el nivel de las advertencias.

Si todo esta bien con el código fuente, el resultado debería ser: `Syntax OK`.

### Segunda iteración del convertidor

Hay diferencias entre el comando `puts` y el comando `pring`; el primero agrega una línea antes de presentar el resultado en pantalla. Mientras que el segundo lo imprime en pantalla y concluye sin agregar el espacio.

`puts` La forma abreviada de la oración en inglés "put string", que significa colocar caracteres. Aunque `put` puede no evocar intuitivamente la noción de saltar a la siguiente línea, eso es lo que hace `puts`. Imprime lo que le digas y automáticamente agrega otra línea.

ADVERTENCIA: En algunas plataformas (Windows, en particular), se imprime un carácter de salto de línea adicional al final de la ejecución de un programa. Esto significa que una instrucción `print` que en realidad debería ser `puts` será difícil de detectar, ya que se comportará como tal.

## 1.1.7 Entrada y salida de teclado y archivos

Ruby ofrece numerosas técnicas para leer datos durante la ejecución del programa, tanto desde el teclado como desde archivos de disco.

ENTRADA DE TECLADO

Un programa que repite constantemente que 100 °C equivalen a 212 °F tiene poca utilidad. Un programa más útil permite especificar una temperatura en grados Celsius y proporciona su equivalente en Fahrenheit.

Modificar el programa para incorporar esta funcionalidad implica añadir un par de pasos y utilizar un método de cada una de las tablas 1.1 y 1.2: `gets` (obtener una línea de entrada del teclado) y `to_i` (convertir a entero), uno de los cuales ya conoces.

Dado que se trata de un programa nuevo, no solo de una corrección, puedes colocar el código del siguiente listado en un nuevo archivo: `c2fi.rb` (la `i` significa interactivo).

### 1.2 Segundo ejemplo de convertidor de temperatura (nombre del archivo c2fi.rb)

```
print "Hello. Please enter a Celsius value: "
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
print "The Fahrenheit equivalent is "
print fahrenheit
puts "."
```

En la terminal, ubica la carpeta donde esta el archivo, y escrbribes para ejecutar: `ruby c2fi.rb`

Acortando el código

Puedes acortar considerablemente el código del listado 1.2 consolidando las operaciones de entrada, cálculo y salida. Una versión reescrita y compactada se ve así:

````print "Hola. Por favor, introduce un valor en grados Celsius: "
print "El equivalente en Fahrenheit es ", gets.to_i * 9 / 5 + 32, ".\n"```

Esta versión ahorra variables (no hay ninguna), pero requiere que quien la lea siga un conjunto de expresiones algo más denso (aunque más corto). Cualquier programa suele tener varios puntos donde tendrás que decidir entre escribir código más largo (pero quizás más claro) y más corto (pero tal vez un poco críptico). Y a veces, lo más corto puede ser más claro. Todo forma parte del desarrollo de un estilo de programación en Ruby.
````

ENTRADA DESDE ARCHIVO

Leer un archivo desde un programa Ruby no es mucho más difícil, al menos en muchos casos, que leer una línea de entrada de teclado. La próxima versión de nuestro convertidor de temperatura leerá un número de un archivo y lo convertirá de Celsius a Fahrenheit. Primero, crea un nuevo archivo llamado `temp.dat` (datos de temperatura), que contenga una línea con un número:

100

Ahora, crea un tercer archivo de programa, llamado `c2fin.rb` (para entrada de archivo).

### 1.3 Ejemplo de leer de un archivo (nombre c2fin.rb)

````puts "Leyendo la temperatura en Celsius desde un archivo de datos..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "El número es " + num
print "Resultado: "
puts fahrenheit```
````

El resultado debe verse así:

```
$ ruby c2fin.rb
Leyendo la temperatura en Celsius desde un archivo de datos...
El número es 100
Resultado: 212
```

### 1.4 Ejemplo de convertidor de temperatura con salida a un archivo (c2fout.rb)

ESCRIBIR A UN ARCHIVO

```
print "Hello. Please enter a Celsius value: "
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
```

La llamada al método `fh.puts fahrenheit` imprime el valor de Fahrenheit en el archivo para el cual fh es un identificador de escritura. Si inspecciona el archivo temp.out, debería ver que contiene el equivalente en Fahrenheit del número que ingresó.

### Ejercicios

1. Utilice el código de los listados 1.3 y 1.4 para crear `c2fio.rb`, un programa que lee un número de un archivo y escribe su conversión a grados Fahrenheit en otro archivo. El programa resultante imprimirá la siguiente salida, y temp.out contendrá el valor en grados Fahrenheit equivalente al valor de temp.dat:

```
Leyendo el valor de temperatura en Celsius del archivo de datos...
Guardando el resultado en el archivo de salida 'temp.out'
```

2. Ahora convierta de Fahrenheit a Celsius utilizando las mismas técnicas. Considere
   cambiar los nombres de sus variables (celsius, fahrenheit) para que coincidan con la nueva
   conversión. Puede usar los mismos archivos de entrada y salida (`temp.dat` y
   `temp.out`). El programa resultante imprimirá la siguiente salida:

```
Leyendo el valor de temperatura en grados Fahrenheit del archivo de datos...
Guardando el resultado en el archivo de salida 'temp.out'
```

Intente ingresar los siguientes valores en `temp.dat` y asegúrese de que los valores correspondientes se escriban en temp.out:

| `temp.dat` | `temp.out` |
| :--------: | :--------: |
|    212     |    100     |
|     50     |     10     |
|     5      |    -15     |

## 1.2 Anatomía de la instalación de Ruby

Tener Ruby instalado en tu sistema significa tener varios directorios de disco con
bibliotecas y archivos de soporte del lenguaje Ruby. La mayoría de las veces, Ruby sabe cómo encontrar lo que necesita sin necesidad de que se le pregunte. Pero conocer la instalación de Ruby es fundamental para tener una buena base en Ruby.

Ruby puede indicarte dónde se encuentran sus archivos de instalación. Para obtener esta información durante una sesión de irb, necesitas precargar un paquete de bibliotecas de Ruby llamado `rbconfig` en tu sesión de `irb`. `rbconfig` es una interfaz para acceder a mucha información de configuración compilada sobre tu instalación de Ruby, y puedes hacer que `irb` la cargue usando el parámetro de línea de comandos `-r` de `irb` y el nombre del paquete:

```
$ irb --simple-prompt -r rbconfig
```

Ahora puedes solicitar información. Por ejemplo, puede averiguar dónde se han instalado los archivos ejecutables de Ruby (incluidos ruby ​​e irb):

```
>> RbConfig::CONFIG["bindir"]
```

`RbConfig::CONFIG` es una constante que hace referencia al hash (una especie de estructura de datos) donde Ruby almacena su información de configuración. La cadena "bindir" es una clave del hash. Al consultar el hash con la clave "bindir", se obtiene el valor hash correspondiente, que es el nombre del directorio de instalación del archivo binario.

El resto de la información de configuración está disponible de la misma manera: como valores dentro de la estructura de datos de configuración a los que se puede acceder con claves hash específicas. Para obtener información de instalación adicional, debe reemplazar `bindir` en el comando `irb` con otros términos. Pero siempre se utiliza la misma fórmula básica: RbConfig:::CONFIG["término"]. La Tabla 1.5 describe los términos y los directorios a los que hacen referencia.

### 1.5 Terminos de RbConfig y carpetas de Ruby

|   Termino   |                      Contenido del directorio                      |
| :---------: | :----------------------------------------------------------------: |
| rubylibdir  |                         Libreria estandar                          |
|   bindir    |                Herramientas de la linea de comandos                |
|   archdir   |      Extensiones y bibliotecas específicas de la arquitectura      |
|   sitedir   | Extensiones y bibliotecas propias o de terceros (escritas en Ruby) |
|  vendordir  |       Extensiones de terceros y librerias (escrito en Ruby)        |
| sitelibdir  |    Tus propias extensiones del lenguaje Ruby (escrito en Ruby)     |
| sitearchdir |      Tus propias extensiones del lenguaje Ruby (escrito en C)      |

La siguiente sección contiene una lista de carpetas de intalación y lo que contienen.

### 1.2.1 Libreria estandar (RbConfig::CONFIG[“rubylibdir”])

En rubylibdir encontraras programas escritos en Ruby. Almacenan librerias estandar, estas son sus funcionalidades:

- uri.rb - Herramientas para el manejo uniforme de URIs
- fileustils.rb - Utilidades para manipular archivos de forma fácil desde programas de Ruby.
- tempfile.rb - Mecanismos automáticos para la creación de archivos temporales.
- benchmark.rb - Una librería que mide el rendimiento de programas.

La mayoría de los programadores solo utilizan un subconjunto de estas librerias, pero incluso una fracción de esta colección tan grande de bibliotecas de programación ofrece mucho con lo que trabajar.

### 1.2.2 El directorio de extensiones C (RbConfig::CONFIG[“archdir”])

Generalmente ubicado un nivel por debajo de rubylibdir, `archdir` contiene extensiones y bibliotecas específicas de la arquitectura. Los archivos en este directorio suelen tener nombres que terminan en .so, .dll o .bundle (según el hardware y el sistema operativo).

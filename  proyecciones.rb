# Crear el programa proyecciones.rb y un archivo con las proyecciones de venta de cada
# mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en la misma
# carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido
# los siguientes datos:
# 300070,50520,35000,32810,47999,62050,89100,21000,100010,121900,99549,210
# 000
# El desafío consiste en hacer 2 simulaciones.
# ● Las ventas totales del primer semestre, dado que en la primera mitad del semestre se vende un 10% más.
# ● Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.
# El resultado debe ser presentado en un archivo llamado resultados.data. Los datos deben
# contener máximo 2 decimales y estar cada uno en una sola línea.
# Uso:
# ruby proyecciones.rb
# Ejemplo de formato del contenido del archivo resultados.data.
# // Estos valores son referenciales
# 231231.32
# 879879.43
# Tips:
# ● El output en pantalla no es necesario, pero no afecta la evaluación. Se
# debe crear el archivo resultados.data y debe cumplir con el formato
# establecido.
# ● Tener cuidado con los datos de entrada, son strings y deben ser tratados como float.
# ● Se recomienda crear un método que recibe cuatro argumentos:
# ○ El arreglo con los datos.
# ○ El aumento.
# ○ Desde qué índice se debe leer el arreglo.
# ○ Hasta qué índice se debe leer el arreglo.
# ● Investigar respecto a ruby format number.
# ● El archivo con el que se probará el ejercicio tendrá distintos datos.

# Se recomienda crear un método que recibe cuatro argumentos
#-----------------------------------------------------------------------------------
# 1.- el primer punto del primer ejercicio debe ser los primeros 6 meses con los primeros 3 aumentados al 10%
# 2.-el segundo punto del primer ejercicio debe ser los ultimos 6 meses con los ultimos 3 aumentados al 20%
#-----------------------------------------------------------------------------------
#Abrir archivo y leerlo.
data = open('ventas_base.db').read
#Separar datos (convertimos el registro en un arreglo).
data = data.split(',')
#Convertir valor a flotantes.
data = data.map do |months|
    months = months.to_f
end 
# Separar datos por semestres y trimestres.
primer_quarter = data[0..2].sum 
segunda_quarter = data[3..5].sum
tercer_quarter = data[6..8].sum
cuarto_quarter = data[9..11].sum
# Se procede a aumentar las ventas según periodo
primer_quarter = primer_quarter*1.1 
cuarto_quarter = cuarto_quarter*1.2
# Agrupamos las ventas esperadas según la proyección
semestre_primero = primer_quarter + segunda_quarter
semestre_segundo = tercer_quarter + cuarto_quarter
# Agregamos la ventas en un arreglo y aplicamos el metodo join
ventas = [semestre_primero.round(2), semestre_segundo.round(2)].join("\n")
File.write("resultados.data", ventas)
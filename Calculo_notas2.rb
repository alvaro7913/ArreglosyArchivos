# Se pide:
# ● Crear un archivo llamado calculo_notas2.rb.
# ● Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
# que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno.
# Tips:
# ● El output en pantalla no es necesario, pero no afecta la evaluación.
# ● El archivo no será el mismo mostrado, pueden ser más columnas y más
# filas.
# ● El espacio principal del programa no será probado, puedes ocuparlo
# para probar el código llamando a los métodos, recuerda transformar las notas a
# número.
# ● El nombre siempre será el primer elemento.
# ● Todos los alumnos tendrán la misma cantidad de notas.

# Traemos la data del archivo, lo leemos y lo adaptamos
data = open('notas.data').readlines
data = data.map do |e|
  e.split(',')
end
# Se crea el método 
def nota_mas_alta (arr)
    # Declaramos una variable y le asignamos un arreglo 
    listado = []
    # Recorremos el arreglo principal 
    arr.map do |ele|
        # Declaramos variable y le asignamos un arreglo 
        notas_alumno = []
        # Utilizando each_with_index, recorremos el arreglo por elemento e indice 
        ele.each_with_index do |element, index|
            # Excluimos el primer elemento del arreglo (contiene el nombre)
            next if index == 0
            # Agregamos al arreglo "notas_alumno" las notas como integer
            notas_alumno.push(element.to_i)
        end
        # Agregamos al arreglo "listado" la nota máxima de cada alumno 
        listado << notas_alumno.max
    end
    return listado.join(',')
end

print nota_mas_alta(data)
puts
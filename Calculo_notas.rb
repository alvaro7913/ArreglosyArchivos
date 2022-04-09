# Debemos crear un metodo nota_mas_alta que reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.
# Abrimos y leemos el archivo con las notas
data = open('notas.data').readlines
data = data.map do |reg| 
    reg.split(',')
end
# Creamos el método que recibe el registro 
def nota_mas_alta(arr)
    # Filtramos para recibir solo los datos correspondientes a las notas 
    notas = arr[1..5]
    # Convertimos las notas a un valor entero 
    notas = notas.map do |note|
        note.to_i
    end 
    # Obtenemos el valor mas alto dentro del rango revisado 
    notas.max
end
print nota_mas_alta(data[0]) 
puts
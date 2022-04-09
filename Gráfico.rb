data =[5, 3, 2, 5, 10]

def chart(arr)
    # Recorremos el arreglo y ocupamos el valor (no el indice)
    arr.map do |val|
        # Se imprime un pipe por registro 
        print "|"
        # Multiplicamos por 2 cada registro y recorremos imprimiendo la cantidad de veces calculadas
        (val*2).times do |val_2|
            print "*"
        end
        # Salto de linea 
        print "\n"
    end
    # Luego de recorrer el arreglo, se imprime un signo >
    print ">"
    # Se imprimen - tantas veces como el máximo valor hallado mult. por 2
    (arr.max*2).times do |val_2|
        print "-"
    end
    # Salto de linea 
    print "\n"
    # Recorremos el arreglo por indice hasta el máximo valor contenido
    (arr.max).times do |val_ind|
        # Se imprime el valor del indice más 1
        print "#{val_ind + 1} "
    end
end

# chart(data)
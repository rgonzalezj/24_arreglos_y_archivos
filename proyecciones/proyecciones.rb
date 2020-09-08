=begin
Crear el programa proyecciones.rb además tendremos un archivo con las proyecciones de venta
de cada mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en el misma
carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido el
siguiente.
=end

data= open("ventas_base.db").read.split(",")
array = []

data.each do |d|
    array.push(d.to_i)
end

def simulacion(arr, porcentaje1, porcentaje2)
    arr1= arr[0..5].sum
    arr2= arr[6..1].sum
    ((arr1 * porcentaje1)+ (arr2 * porcentaje2)).floor(2)
end

sim1= simulacion(array, 1.1, 1)
sim2= simulacion(array, 1, 1.2)

output= open("resultados.data", "w")

output.write ("El resultado de la simulación uno es #{sim1}\n")
output.write ("El resultado de la simulación dos es #{sim2}\n")

output.close

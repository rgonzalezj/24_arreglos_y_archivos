=begin
Se tiene un archivo notas.data con las notas de un curso
Javiera,9,5,3,9
Francisca,8,3,5,5
Juan,9,5,5,9
Pedro,5,4,6,8
Cecilia,8,7,8,8

Crear un archivo llamado calculo_notas.rb .
Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que reciba
un arreglo con el nombre y notas de un alumno y devuelva la nota mas alta.
=end


data = File.open ("notas.data").readlines
data.map! {|line| line.split(",")}

def nota_mas_alta(data)
    [data[0]]
    end

print nota_mas_alta(data[0])


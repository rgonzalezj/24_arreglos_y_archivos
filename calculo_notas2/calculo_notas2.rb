=begin
Se tiene un archivo notas.data con las notas de un curso
Se pide:
Crear un archivo llamado calculo_notas2.rb .
Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb que
reciba un arreglo con el nombre y notas de un alumno y devuelva una arreglo con la nota mas
alta de cada alumno.
=end

data = File.open ("notas.data").readlines
data.map!{|line| line.split(",")}

def nota_mas_alta(data)
    resultado = []
    data.each do |d|
    resultado << [d(0), d.map {|x| x.to_i}.max]
    end
    resultado
end
puts nota_mas_alta(data[2])

=begin
Crear el archivo grafico.rb que contenga el método chart que construya un gráfico en la
consola a partir de un arreglo con datos. El método no debe devolver ningún valor.   
=end

def chart(arr)
    arr.each do |i|
        print " | #{"*"*i*2} \n"
    end
    arr.max.times do |i|
        print "#{i + 1}\s"
    end
end
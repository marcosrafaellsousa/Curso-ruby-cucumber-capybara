#Juntar caracteres

variavel = 'Dio'

puts 'ola ' + variavel

puts 'ola ' << variavel #Não muda o objeto


variavel_inteiro = 2
variavel_string = 'total e: '

puts "#{variavel_string}" + "#{variavel_inteiro}" #concatenando com aspas duplas

puts "#{variavel_string}#{variavel_inteiro}" #concatenando de forma alternativa
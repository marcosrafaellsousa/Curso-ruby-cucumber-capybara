puts 'digite o numero 1 ou 2'
v1 = gets.to_i

=begin
if v1 == 1
    puts 'voce digitou 1'
elsif v1 == 2
    puts 'voce digitou 2'
else
    puts 'voce nao digitou 1 nem 2'
end


unless v1 == 2      #inverso do if
    puts 'condicao unless falsa'
else
    puts 'condicao unless verdadeira'
end
=end

case v1
when 1
    puts 'voce digitou 1'
when 2
    puts 'voce digitou 2'

else
    puts 'opcao invalida'
end
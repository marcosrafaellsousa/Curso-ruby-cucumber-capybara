v1 = 1
v2 = 2
v3 = 3
v4 = 4

# e: &&
if (v1 < v2) && (v1 < v3)
    puts "condicao atendida pelos dois casos"
else
    puts 'condicao falsa'
end

# ou: ||
if (v1 < v2) || (v4 < v1)
    puts "apenas um condicao atendida"
else
    puts 'condicao falsa'
end

# negacao: !
if !(v3<v4)
    puts 'negacao atendida'
else
    puts 'negacao nao atendida'
end
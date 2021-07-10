#Nome = letra maiuscula
#Classe = nome, atributos, metodos e construtores

class NomeDaClasse

    #Equivalente ao get e set do java
    #Isso é uma facilitacao da definicao de um metodo
    attr_accessor :nome

    #permite apenas leitura
    attr_reader :nome1

    #permite apenas escrita
    attr_writer :nome2

    # definicao de um metodo
    # nome em letras minusculas separado por _
    def metodo_imprime
        #corpo do metodo
        puts "corpo do metodo"
    end

end

# E possivel criar varias classes em um arquivo
# Heranca e indicado pelo simbolo: "<" seguido pelo nome da classe pai
class ClasseFilho < NomeDaClasse
    
end

objeto = NomeDaClasse.new
objeto.nome = "joao"
puts objeto.nome
objeto.metodo_imprime

objeto_filho = ClasseFilho.new
objeto_filho.nome = "joao jr"
puts objeto_filho.nome
objeto_filho.metodo_imprime
# Modulos sao um agrupamento de classes, metodos e constantes
# Servem para organizar namespaces, e evitar conflito de nomes
# Implementam MIXIN
# E muito parecido com uma classe, porem nao e instanciavel
# Nao existe heranca em modulos

module Modulo1

    def metodo_imprime
        puts 'metodo dentro de um modulo'
    end
end

class Classe1

    # Importanto metodos do modulo para dentro da classe
    # Uma classe pode incluir varios modulos
    include Modulo1

end

objeto = Classe1.new
objeto.metodo_imprime
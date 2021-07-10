#conceitos: Override e Super

class ClassePai

    def correr

        puts 'metodo correr classe pai'
        
    end
end

class ClasseFilho < ClassePai

    #Sobrescrita do metodo corre da classe pai
    def correr

    #Super invoca um metodo da classe pai que foi sobrescrito
        puts super
        puts 'metodo correr classe filho'
        
    end
end

objeto = ClasseFilho.new

objeto.correr
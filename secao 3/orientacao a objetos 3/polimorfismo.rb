# Polimorfismo se refere a capacidade de um objeto de ser referenciado de 
# diversas formas diferentes, porem ele mesmo sempre pertence ao mesmo tipo

class Cachorro

    def latir
        puts "au au"
    end
end

class CachorroFilho < Cachorro

    def latir
        puts "au au au"
    end
end

class Pessoa

    # Esse metodo vai chamar tanto o metodo latir da classe Cachorro como
    # o metodo latir da classe CachorroFilho
    def passeia_cachorro(cachorro)
        cachorro.latir
    end
end

cachorro1 = Cachorro.new
cachorro2 = CachorroFilho.new

pessoa1 = Pessoa.new

pessoa1.passeia_cachorro(cachorro1)
pessoa1.passeia_cachorro(cachorro2)
# Pegando todos os arquivos que terminem com "_page.rb"
# Adicionando dentro da variável file um "require arquivo"

Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each {|file| require file }

# Isso serve para carregar todas as classes

module PageObjects

    def home
        # Isso é a utilização do padrão factory, instanciar apenas se não existir instância
        @home ||= MapeandoElementosPage.new
    end
end
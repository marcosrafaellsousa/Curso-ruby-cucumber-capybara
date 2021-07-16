Quando ('eu mapeio uma lista') do

    @lista_de_elementos_page = ListaDeElementosPage.new
    @lista_de_elementos_page.load

    puts @lista_de_elementos_page.nome_das_colunas.size
    puts @lista_de_elementos_page.lista_de_entradas.size

    @lista_de_elementos_page.lista_de_entradas.each do |entrada|
        puts entrada.text
    end
end

Entao ('eu verifico o primeiro elemento') do

    expect(@lista_de_elementos_page.lista_de_entradas[0].text).to eq '1,001'
end
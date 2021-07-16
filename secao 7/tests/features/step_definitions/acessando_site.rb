Quando ('eu acesso a url') do

    @pagina_inicial = PaginaInicial.new
    @pagina_inicial.load
end

Então ('eu verifico se estou na pagina inicial.') do
    expect(current_url).to eq('https://getbootstrap.com/')
end
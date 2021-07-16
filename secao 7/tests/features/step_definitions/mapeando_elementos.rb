Quando ('eu preencho camps do formulario') do

    @mapeando_elementos_page = MapeandoElementosPage.new
    @mapeando_elementos_page.load
    @mapeando_elementos_page.preencher

# chamar só o elemento
    @mapeando_elementos_page.first_name.set('teste teste')
end
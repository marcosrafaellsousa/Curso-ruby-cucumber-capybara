Quando ('eu clico no botão') do

    @ajax = AjaxPage.new
    @ajax.load
    @ajax.clicar_botao
end

Entao ('eu verifico se o texto apareceu') do
    @ajax.wait_until_mensagem_erro_endereco_visible
    expect(@ajax.mensagem_erro_endereco.text).to eq "Please enter your shipping address."
end
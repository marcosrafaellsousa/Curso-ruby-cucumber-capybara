Quando ('eu realizo ações com o teclado.') do
    
    visit '/docs/4.0/examples/checkout/'
    elemento = find('#firstName')
    elemento.send_keys('teste')
    # Lista de possíveis valores na documentação do método
    elemento.send_keys(:page_down)
    elemento.send_keys(:enter)
    # Por alguma razão nesse formulario usar o :tab antes do :page_up faz com que o :tab não mude de campo
    # ¯\_(ツ)_/¯
    elemento.send_keys(:page_up)
    elemento.send_keys(:tab)
end
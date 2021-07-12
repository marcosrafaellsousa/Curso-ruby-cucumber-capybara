Quando('eu acesso a url de botoes.') do
    visit('/docs/4.0/examples/checkout/')
end
  
Entao('verifico se encontrei os elementos.') do
    # all busca todos os elementos que contenham o all
    # busca elementos com a classe 'btn'
    page.all(:css, '.btn')
    # buscando por id
    find('#firstName')
    find_by_id('firstName')
    # busca botões
    find_button(class:'btn btn-secondary')
    # busca o primeiro elemento com a classe 'btn'
    first('.btn')
    # busca elemento por um link
    #find_link(href: 'http://google.com')
end
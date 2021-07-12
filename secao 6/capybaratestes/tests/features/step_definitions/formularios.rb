Quando('eu faco cadastro') do
    visit '/docs/4.0/examples/checkout/'
    #achando o campo de texto First Name e preenchendo algo
    fill_in(id: 'firstName', with: 'nome teste')
    find('#lastName').set('segundo nome')
    find("input[placeholder='Username']").send_keys('teste')
    fill_in(id: 'address', with: '1234 Main St')
    # O metodo send_keys funciona para menus dropdown
    find('#country').send_keys('United States')
    find('#state').send_keys('California')
    find('#zip').send_keys('0')
    find('#cc-name').send_keys('teste')
    find('#cc-number').send_keys('0')
    find('#cc-expiration').send_keys('00/00')
    find('#cc-cvv').send_keys('000')
    click_button('Continue to checkout')
end

Então('eu verifico se fui cadastrado') do
    # Caso tenha um CRUD completo construído, acessar a pagina de visualização e
    # Procurar o elemento criado
    # Caso tenha uma mensagem de sucesso ou fracasso, validar a mensagem
    #
    # No caso do formulario no bootstrap, caso você preencha todos os campos ele te direciona para outra URL
    # Caso alguma validação falhe ele continua na mesma URL, que é a forma como estou verificando a validação do 
    # formulario
    expect(current_url).to eq 'https://getbootstrap.com/docs/4.0/examples/checkout/?paymentMethod=on'
end
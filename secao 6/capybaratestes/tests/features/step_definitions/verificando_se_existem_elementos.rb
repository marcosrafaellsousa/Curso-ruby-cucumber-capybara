Quando('eu clico no botão') do
    visit '/docs/4.0/examples/checkout/'
    click_button('Continue to checkout')
end

Entao('eu verifico se o texto apareceu na tela com sucesso') do
    # Utilizando find e comparando com Rspec
    @texto = find('div[class="invalid-feedback"]', text: 'shipping address.')
    expect(@texto.text).to eql "Please enter your shipping address."

    # Outras formas
    page.assert_text(:visible, "Please enter your shipping address")
    page.has_text?('Valid first name is required.')
    have_text('Valid last name is required.')
    end
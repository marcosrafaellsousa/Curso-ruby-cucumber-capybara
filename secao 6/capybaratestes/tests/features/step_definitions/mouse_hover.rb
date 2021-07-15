Quando ('eu passo o mouse em cima do botao') do
    visit '/docs/4.0/examples/checkout/'
    find_button('Continue to checkout').hover
    find_button('Continue to checkout').hover.click
end
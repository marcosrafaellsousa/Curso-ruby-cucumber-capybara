Quando ('eu passo o mouse em cima do botao') do
    visit '/docs/4.0/examples/checkout/'
    sleep(5)
    find_button('Continue to checkout').hover
    sleep(5)
    find_button('Continue to checkout').hover.click
    sleep(5)
end
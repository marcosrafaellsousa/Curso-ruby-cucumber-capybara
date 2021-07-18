Quando('eu me cadastro') do
    cadastro.load
    cadastro.preencher_cadastro
end

Entao('eu verifico se fui cadastrado') do
    expect(page).to have_current_path('https://getbootstrap.com/docs/5.0/examples/checkout/?paymentMethod=on', url: true)
end
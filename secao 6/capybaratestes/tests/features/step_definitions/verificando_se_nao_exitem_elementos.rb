Entao ('eu preencho o campo de endereço') do
    fill_in('address', with: '1234 Main St')
end

Entao('eu verifico se o aviso sumiu da tela') do
    assert_no_text("Please enter your shipping address")
    has_no_text?("Please enter your shipping address")
    have_no_text("Please enter your shipping address")
end
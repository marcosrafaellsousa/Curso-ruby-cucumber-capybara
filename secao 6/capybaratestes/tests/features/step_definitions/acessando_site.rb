Quando('eu acesso a url.') do
    visit('/imghp')
end
  
Então('eu verifico se estou na pagina correta.') do
    expect(page).to have_current_path('https://www.google.com.br/imghp', url: true)
    sleep(5)
end
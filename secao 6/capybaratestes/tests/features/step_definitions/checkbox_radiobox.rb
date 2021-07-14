Quando('eu marco um checkbox e um radiobox') do
    visit '/docs/4.0/examples/checkout/'

    # Checkbox:
    find('label[for="same-address"]').click
    # O id "save-info" se refere ao input, a ação de se clicar está dentro da label
    #check('save-info')
    # Por isso a opção "allow_label_click:" que significa achar esse elemento que possui uma label clicável
    check('save-info', allow_label_click: true)
    uncheck('save-info', allow_label_click: true)

    # Radiobox: Denovo é preciso achar o elemento onde a label é clicavel
    # Aparentemente cada opção do radiobox tem um id diferente
    choose('debit', allow_label_click: true)
end
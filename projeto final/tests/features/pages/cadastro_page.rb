class CadastroPage < SitePrism::Page

    set_url '/docs/5.0/examples/checkout/'

    # Inputs de texto
    element :primeiro_nome, '#firstName'
    element :ultimo_nome, '#lastName'
    element :usuario, '#username'
    element :email, '#email'
    element :endereco, '#address'
    element :zip, '#zip'
    element :cartao_nome, '#cc-name'
    element :cartao_numero, '#cc-number'
    element :cartao_validade, '#cc-expiration'
    element :cartao_cvv, '#cc-cvv'

    # Selects
    element :pais, '#country'
    element :estado, '#state'

    # Checkbox e radiobox
    element :check_box_same_address, 'label[for="same-address"]'
    element :radio_box_debit, 'label[for="debit"]'

    # Botões
    element :botao_continuar, :xpath, '//button[text()="Continue to checkout"]'

    def preencher_cadastro
        primeiro_nome.set 'first name test'
        ultimo_nome.set 'last name test'
        usuario.set 'username test'
        email.set 'email@email.com'
        endereco.set '1234 Main St'
        pais.find('option',text: 'United').select_option
        estado.find('option',text: 'California').select_option
        zip.set '0'

        check_box_same_address.click(allow_label_click: true)
        radio_box_debit.click(allow_label_click: true)

        cartao_nome.set 'card name test'
        cartao_numero.set '0000000000000000'
        cartao_validade.set '00/00'
        cartao_cvv.set '000'

        botao_continuar.click
    end
end
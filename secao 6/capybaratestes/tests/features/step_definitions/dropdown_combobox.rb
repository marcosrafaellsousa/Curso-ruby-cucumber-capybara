Quando('eu interajo com dropdown e select.') do
    visit '/docs/4.0/examples/checkout/'

    # Para um dropdown:
    #find('#id_dropdown').click
    #find('#id_opção').click

    # Para um select:
    # Não precisei indicar o '#' para dizer que era um id
    #select 'United States', from: 'country'

    # Forma alternativa de usar select:
    #find('option,value="atributo_valor"').select_option

    # Outra forma alternativa de usar select:
    find('option',text: 'United').select_option
end

Quando('eu preencho o autocomplete') do
    visit 'https://raw.githack.com/xcash/bootstrap-autocomplete/master/dist/latest/index.html'
    find('.form-control.basicAutoComplete').set('goo')
    find('.dropdown-item', text: 'gle Cloud Platform', wait:5).click
end
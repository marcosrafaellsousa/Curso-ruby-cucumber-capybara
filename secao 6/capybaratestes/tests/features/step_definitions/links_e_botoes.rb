Quando('eu clico em botoes') do
    visit '/'
    # "click_on" e "click_link_or_button" são identicos 
    click_on('Get started')
    visit '/'
    #find_button(class: 'btn-clipboard')   
    #first(:button, 'Copy').click
    #first(:button, 'Copy').double_click 
    #first(:button, 'Copy').right_click
    click_link('All releases')
end
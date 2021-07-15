Quando ('eu entro na janela') do
    visit '/'
    # Recebe a janela que foi aberta pelo link
    @janela_blog = window_opened_by do
        find('.nav-link.p-2', text: 'Blog').click
    end

    # Outra forma
    # Comando mudar o navegador a janela do navegador
    windows.first()
    windows.last()
    # Utilizando os comando de mudar de aba não é necessário atribuir a janela em uma variável
    # Nem utilizar os metodos window_opened_by e within_window
end

Entao ('eu verifico se o texto existe na janela') do
    # Muda o foco para a janela
    within_window @janela_blog do 
        find('h1', text: 'The Bootstrap Blog')
        @janela_blog.close
    end
end

Quando ('eu aceito um alert comum') do
    
    visit 'https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert'
    
    # Aceitando um alerta que vai se abrir no bloco
    within_frame ('iframeResult') do
        accept_alert do
            click_button('Try it')
        end
    end
end

Quando ('eu cancelo um alert de confirm') do
    
    visit 'https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_confirm'
    
    within_frame ('iframeResult') do
        # accept_confirm
        dismiss_confirm do
            click_button('Try it')
        end
    end
end

Quando ('eu aciono um alert de prompt e digito algo') do
    
    visit 'https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_prompt'
    
    # Aceitando um alerta de promt e digitando algo
    within_frame ('iframeResult') do
        # dismiss_prompt
        accept_prompt(with: "Batman") do
            click_button('Try it')
        end
    end
end

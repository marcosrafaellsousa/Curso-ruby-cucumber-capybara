Quando ('eu arrasto a imagem.') do
    
    visit 'https://www.w3schools.com/html/tryit.asp?filename=tryhtml5_draganddrop2'

    within_frame('iframeResult') do
        @elemento_para_drag = find('#drag1')
        @elemento_destino_do_drop = find('#div2')
        
        @elemento_para_drag.drag_to(@elemento_destino_do_drop)
        sleep(5)
    end
end
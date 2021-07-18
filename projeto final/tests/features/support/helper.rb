module Helper

    def tirar_foto(nome_arquivo, resultado)
        caminho_do_arquivo = "report/screenshots/test_#{resultado}"
        caminho_completo_foto = "#{caminho_do_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(caminho_completo_foto)
        # attach(caminho_completo_foto, 'Clique aqui')
        attach(caminho_completo_foto)
    end
end

module Helper 

    # Tira uma foto do browser na hora do teste, coloca na pasta de teste que falhou ou passou e coloca a foto no arquivo reports
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "results/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)

        # Adiciona foto no arquivo html
        attach(foto)
    end
end
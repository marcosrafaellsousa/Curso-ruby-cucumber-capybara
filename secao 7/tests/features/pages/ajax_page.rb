class AjaxPage < SitePrism::Page

    set_url '/docs/4.0/examples/checkout/'

    element :botao, :xpath, '//button[text()="Continue to checkout"]'
    element :mensagem_erro_endereco, :xpath, '//div[contains(text(),"Please enter your shipping address.")]'
    def clicar_botao
        botao.click
    end
end

Quando ('eu clico em um botao do iframe') do

    @page_contendo_o_iframe = PageContendoOIframe.new
    @page_contendo_o_iframe.load

    # É preciso executar os comando no iframe em um bloco
    @page_contendo_o_iframe.iframe_page do |iframe|
        accept_alert do
            iframe.botao.click
        end
    end
end

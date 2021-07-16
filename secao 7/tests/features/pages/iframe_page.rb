class IframePage < SitePrism::Page 

    element :botao, :xpath, '//button[.="Click Me!"]'
end


class PageContendoOIframe < SitePrism::Page 

    set_url 'https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_button_test'
    iframe :iframe_page, IframePage, '#iframeResult'
end

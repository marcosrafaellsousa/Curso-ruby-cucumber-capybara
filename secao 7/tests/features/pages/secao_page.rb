class Secao < SitePrism::Section

    element :docs, :xpath, '//a[@class="nav-link p-2" and .="Docs"]'
    element :examples, :xpath, '//a[@class="nav-link p-2"and .="Examples"]'
    
end

class SecaoPage < SitePrism::Page

    set_url '/'
    section :navbar, Secao, '#bdNavbar'

end

Quando ('eu clico no elemento de uma secao') do

    @secao_page = SecaoPage.new
    @secao_page.load
    @secao_page.navbar.docs.click
end

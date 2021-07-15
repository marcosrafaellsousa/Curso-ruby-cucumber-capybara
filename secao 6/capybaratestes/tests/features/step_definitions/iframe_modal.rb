Quando ('eu entro no iframe e clico no video') do
    visit '/docs/4.0/utilities/embed/'
    @iframe = find('iframe[src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0"]')
    # Esse caso foi bem chato porque os elementos só renderizam quando você scrolla
    # Por isso o iframe.hover foi necessário
    @iframe.hover
    
    # within_fieldset e within_table são similares
    within_frame(@iframe) do
        #find('.ytp-title-channel', wait: 5).hover
        find('div', class: "ytp-cued-thumbnail-overlay", wait: 5).hover.click
        #find('button[aria-label="Reproduzir"]', wait: 5).hover.click
    end
end

Quando ('eu entro no modal e verifico o texto') do
    visit '/docs/4.0/components/modal/'
    find('button[data-target="#exampleModalLive"]').click
    @modal = find('.modal-dialog')
    within(@modal) do
        have_text("Woohoo, you're reading this text in a modal!")
        find_button('Close').hover.click
        sleep(5)
    end
end
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    # Capybara disponibiliza 3 drivers
    #selenium   selenuim_chrome    selenuim_chrome_headless
    
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.google.com.br'
    config.default_max_wait_time = 5
end

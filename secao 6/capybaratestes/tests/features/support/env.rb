require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'

Capybara.configure do |config|
    # Capybara disponibiliza 3 drivers
    #selenium   selenuim_chrome    selenuim_chrome_headless
    
    config.default_driver = :selenium_chrome
    config.app_host = 'https://getbootstrap.com'
    config.default_max_wait_time = 5
end

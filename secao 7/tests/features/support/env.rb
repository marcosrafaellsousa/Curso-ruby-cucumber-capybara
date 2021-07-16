require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'
require_relative 'page_helper.rb'

World(PageObjects)

Capybara.configure do |config|
# Drivers: selenium   selenuim_chrome    selenuim_chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = 'https://getbootstrap.com'
    config.default_max_wait_time = 5
end
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'
require_relative 'page_helper.rb'

World(PageObjects)

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Capybara.configure do |config|
# Drivers: selenium   selenuim_chrome    selenuim_chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end
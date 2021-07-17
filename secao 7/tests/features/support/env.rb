require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'
require_relative 'page_helper.rb'

World(PageObjects)

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

# Sobrescrevendo o driver do selenium para usar o browser que quisermos
# Também vale para outros navegadores como safari, poltergeist etc.
Capybara.register_driver :selenium do |app|

    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome,)
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>TRUE)
    elsif BROWSER.eql?('ie')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    end
end

Capybara.configure do |config|
# Drivers: selenium   selenuim_chrome    selenuim_chrome_headless
# Por padrão o driver selenium usa o firefox
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end
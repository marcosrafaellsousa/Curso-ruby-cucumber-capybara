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
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    
    elsif BROWSER.eql?('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome,
        # Utilizando as opções de "capabilities": https://chromedriver.chromium.org/capabilities
        # Headless é bem utilizado em maquinas virtuais, containers etc.
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        "goog:chromeOptions" => {'args' =>['--headless', 'disable-gpu']}
        )
        )
    
    elsif BROWSER.eql?('firefox_headless')
        browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
        Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)
    end
end

Capybara.configure do |config|
# Drivers: selenium   selenuim_chrome    selenuim_chrome_headless
# Por padrão o driver selenium usa o firefox
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end
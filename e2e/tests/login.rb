require "selenium-webdriver"

# require "login_page.rb"
require_relative "../pages/login_page"

@driver = Selenium::WebDriver.for :firefox

@browser = LoginPage.new(@driver,"http://apac-stg.littlehotelier.com")
#browser.load("http://apac-stg.littlehotelier.com")
@browser.login("suprabha.chaudhary@siteminder.com","Delhi123")


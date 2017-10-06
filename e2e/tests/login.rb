require "selenium-webdriver"
require_relative "../pages/login_page"
require_relative "../helpers/spec_helper"


@driver = Selenium::WebDriver.for :firefox

@browser = LoginPage.new(@driver,"")
@browser.login("")


require "selenium-webdriver"

def setup
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 4
end

def teardown
  @driver.quit
end
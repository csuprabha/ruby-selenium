require "selenium-webdriver"

# require "login_page.rb"
require_relative "../pages/login_page"

@driver = Selenium::WebDriver.for :firefox

	# login into the app
	@browser = LoginPage.new(@driver, "http://apac-stg.littlehotelier.com")
	@browser.login("suprabha.chaudhary@siteminder.com","Delhi123")

    # Create Property is called
	@browser = HomePage.new(@driver)  
	#@browser.create_property

     
		
	



		

		



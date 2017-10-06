require "selenium-webdriver"
require_relative "../pages/login_page"
require_relative "../pages/property_page"
require_relative "../pages/setup_page"
require_relative "../pages/reservation_page"
require_relative "../pages/create_reservation_page"

@driver = Selenium::WebDriver.for :firefox

	# login into the app 
	@browser = LoginPage.new(@driver, "http://apac-stg.littlehotelier.com")
	@browser.login("suprabha.chaudhary@siteminder.com","Delhi123")

    # Select a property
	@browser = PropertyPage.new(@driver)  
	@browser.select_property("Suprabha Test Property")

	 # Select Reservation Tab
	@browser = SetupPage.new(@driver)  
	@browser.select_reservation_tab

    # Create Property is called
	@browser = ReservationPage.new(@driver)  
	#@browser.create_reservation

    # create new reservation
	@browser = ReservationModal.new(@driver)
	@browser.reservation_edit

     
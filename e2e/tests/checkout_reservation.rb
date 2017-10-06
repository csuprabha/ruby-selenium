require "selenium-webdriver"
require_relative "../pages/login_page"
require_relative "../pages/property_page"
require_relative "../pages/setup_page"
require_relative "../pages/create_reservation_page"

@driver = Selenium::WebDriver.for :firefox

	# login into the app 
	@browser = LoginPage.new(@driver, "")
	@browser.login("")

    # Select a property
	@browser = PropertyPage.new(@driver)  
	@browser.select_property("Suprabha Test Property")

	 # Select Reservation Tab
	@browser = SetupPage.new(@driver)  
	@browser.select_reservation_tab

    # checkout reservation
	@browser = ReservationModal.new(@driver)
	@browser.reservation_checkout


     
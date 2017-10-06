require "selenium-webdriver"

class SetupPage

	def initialize(driver)
		@driver = driver
	end

	def select_reservation_tab()
    @driver.find_element(:xpath,"//a[contains(text(),'Reservations')]").click  
    sleep 5
  end
end	



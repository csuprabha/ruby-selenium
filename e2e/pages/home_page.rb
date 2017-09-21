require "selenium-webdriver"
# require "page-object"

class HomePage

	def initialize(driver)
		@driver = driver
	end

# 	 def create_property()
      
#         @driver.find_element(:class, "create").click
#  		@driver.find_element(:id, "property_name").send_keys("Suprabha AutoTest Property")

#  		dropdown = @driver.find_element(id: "property_currency_id")
#   		select_list = Selenium::WebDriver::Support::Select.new(dropdown)
#   		select_list.select_by(:value, '8')

#  		dropdown = @driver.find_element(id: "property_time_zone")
#   		select_list = Selenium::WebDriver::Support::Select.new(dropdown)
#   		select_list.select_by(:value, 'Sydney')

#   		@driver.find_element(:id, "property_test_account").click

#   		@driver.find_element(:class, "create").click

# 		wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# 	end
end	



require "selenium-webdriver"
# require "page-object"

class PropertyPage

	def initialize(driver)
		@driver = driver
	end

	def select_property(property_name)
		#search property
		sleep 5
		@driver.find_element(:id,"q").send_keys(property_name)
    	wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    	@driver.find_element(:name,"commit").click

    	# select property
    	@driver.find_element(:xpath,"//a[contains(text(),'Extranet')]").click 
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



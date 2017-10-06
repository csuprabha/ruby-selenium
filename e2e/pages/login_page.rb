require "selenium-webdriver"

class LoginPage

	def initialize(driver,url)
		@driver = driver
		@driver.navigate.to url
	end

	def login(username,password) 

		element = @driver.find_element(:id,'user_session_username').send_keys(username)

		element = @driver.find_element(:id,'user_session_password')
		element.send_keys password
        element.submit

		@driver.find_element(:id,'user_session_submit_action').click
	end
end
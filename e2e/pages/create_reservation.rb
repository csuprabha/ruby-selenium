require "selenium-webdriver"
# require "page-object"


class CreateReservation

	def initialize(driver)
		@driver = driver
	end

	 def create_reservation()

       @driver.find_element(:id,"q").send_keys("Suprabha Test Property")
       wait = Selenium::WebDriver::Wait.new(:timeout => 15)
       @driver.find_element(:name,"commit").click

 		# go to extranet
      @driver.find_element(:xpath,"//a[contains(text(),'Extranet')]").click  

     # @driver.find_element(:xpath,"//a[contains(text(),'Setup Credit Cards')]").click  

      # go to reservation tab
      @driver.find_element(:xpath,"//a[contains(text(),'Calendar')]").click  
    #  @driver.wait_for_page_to_load "3000"

      wait = Selenium::WebDriver::Wait.new(:timeout => 15)

      #@driver.find_element(:class,'create-reservation.sg_selected').click

     # @driver.find_element(:xpath,"//*[contains(concat( " ", @class, " " ), concat( " ", "create-reservation", " " ))]").click
   

      # open modal
     @driver.find_element(:link_text,"Create Room Closure").click
      #@driver.find_element(:xpath,"//a[contains(text(),'Create Room Closure')]").click  
      # @driver.find_element(:xpath,"//a[@class,'create-room_closure')]").click  
      
    #@driver.find_element(:xpath,"//a[@class='export']").click




 	
	end
end	



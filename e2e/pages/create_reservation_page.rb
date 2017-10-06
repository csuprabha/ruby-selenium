require "selenium-webdriver"
# require "page-object"
require 'date'


class ReservationModal

	def initialize(driver)
		@driver = driver
	end

	def reservation_edit()
        @driver.find_element(:css,"a.create-reservation").click
     
        sleep 5

        # get current date and increase by 1 month
        current_time = DateTime.now >> 1

         current_time= current_time.strftime "%d %b %Y"
         puts current_time
         @driver.find_element(:id, 'check_in_date_display').clear
	       @driver.find_element(:id, 'check_in_date_display').send_keys(current_time)

         current_time=(DateTime.now >> 1) + 1
          current_time=current_time.strftime "%d %b %Y"
          @driver.find_element(:id, 'check_out_date_display').clear
         @driver.find_element(:id, 'check_out_date_display').send_keys(current_time)

	    sleep 3

		dropdown = @driver.find_element(:id, 'room_type')
  		select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  		select_list.select_by(:index, 1)

  		sleep 3

  		dropdown = @driver.find_element(:id, 'rate_plan_id')
  		select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  		select_list.select_by(:index, 1)

  		sleep 3

  		dropdown = @driver.find_element(:name, 'reservation_room_types[][room_id]')
  		select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  		select_list.select_by(:index, 1)

  		sleep 3

  		@driver.find_element(:id, 'number_adults').send_keys("2")

  		@driver.find_element(:id, 'guest_first_name').send_keys("Suprabha")

  		@driver.find_element(:id, 'guest_last_name').send_keys("Chaudhary")

  		@driver.find_element(:id, 'guest_email').send_keys("suprabha.chaudhary@siteminder.com")

  		@driver.find_element(:css, "button.btn.btn-sm.btn-success.pull-right.btn-controls").click
    
    end

  def reservation_checkin()

      dropdown=@driver.find_element(:id,'reservation_filter_status')
      select_list = Selenium::WebDriver::Support::Select.new(dropdown)
      select_list.select_by(:index,4)
      @driver.find_element(:css,"button.search").click
      sleep 5
      #@driver.find_element(:css,"a.booking-reference(1)").click
      # @driver.find_element(:xpath,'table/tbody/tr/td').click
      #@driver.find_element(:xpath,"//div[@css='table-responsive']/table/tbody/tr[@css='reservation_room_type']/td[@css='booking-reference']/a").click
      @driver.find_element(:xpath,"//tr[@class='reservation_room_type']/td[@class='booking-reference']/a").click

       #@driver.find_element(:css, 'div.data.table-responsive.table.table-striped.table-hover.table-condensed.table-override>tbody:nth-of-type(2) > tr')
       sleep 3

      @driver.find_element(:css,"button.btn.btn-sm.btn-primary.pull-right.btn-controls").click



  end

  def reservation_checkout()

      dropdown=@driver.find_element(:id,'reservation_filter_status')
      select_list = Selenium::WebDriver::Support::Select.new(dropdown)
      select_list.select_by(:index,2)
      @driver.find_element(:css,"button.search").click
      sleep 5
      #@driver.find_element(:css,"a.booking-reference(1)").click
      # @driver.find_element(:xpath,'table/tbody/tr/td').click
      #@driver.find_element(:xpath,"//div[@css='table-responsive']/table/tbody/tr[@css='reservation_room_type']/td[@css='booking-reference']/a").click
      @driver.find_element(:xpath,"//tr[@class='reservation_room_type']/td[@class='booking-reference']/a").click

       #@driver.find_element(:css, 'div.data.table-responsive.table.table-striped.table-hover.table-condensed.table-override>tbody:nth-of-type(2) > tr')
       sleep 3

      @driver.find_element(:css,"button.btn.btn-sm.btn-primary.pull-right.btn-controls").click



  end

  def reservation_cancel()

      dropdown=@driver.find_element(:id,'reservation_filter_status')
      select_list = Selenium::WebDriver::Support::Select.new(dropdown)
      select_list.select_by(:index,4)
      @driver.find_element(:css,"button.search").click
      sleep 5
      #@driver.find_element(:css,"a.booking-reference(1)").click
      # @driver.find_element(:xpath,'table/tbody/tr/td').click
      #@driver.find_element(:xpath,"//div[@css='table-responsive']/table/tbody/tr[@css='reservation_room_type']/td[@css='booking-reference']/a").click
      @driver.find_element(:xpath,"//tr[@class='reservation_room_type']/td[@class='booking-reference']/a").click

       #@driver.find_element(:css, 'div.data.table-responsive.table.table-striped.table-hover.table-condensed.table-override>tbody:nth-of-type(2) > tr')
       sleep 5

      @driver.find_element(:css,"a.btn.btn-sm.pull-right.text-red").find_element(:css,"i.fa.fa-remove").click

  end



end	

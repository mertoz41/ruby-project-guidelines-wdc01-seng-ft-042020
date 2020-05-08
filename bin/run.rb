require_relative '../config/environment'
require_relative '../lib/app/type.rb'
require_relative '../lib/app/driver.rb'
require_relative '../lib/app/ride.rb'
require_relative '../lib/command_line_interface.rb'
require "pry"



welcome
name = get_driver_name_from_user
num = get_option_number
get_option(num, name) #1show_driver_rides, 2get_driver_log, 3update_log
input = home_page_entry
home_page_new_entry(input, name) #1get_driver_log, 2update_log, 3show_driver_rides_date, 4logout






# name = get_driver_name_from_user











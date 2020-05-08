require_relative '../config/environment'
require_relative '../lib/app/type.rb'
require_relative '../lib/app/driver.rb'
require_relative '../lib/app/ride.rb'
require_relative '../lib/command_line_interface.rb'
require "pry"
# 1. welcome

# 2. ask and get name 

# 3. connect to the name's data

# 4. now, do you want to log or just retrieve? 

#     1. log
#     2. retrieve

# 1-1. ask and get date, type, price *and repeat until he inputs all for the day  

# 2. ask and get date of driver_data_input

# 3. ask and get name of driver

# 4. ask and get what type of ride driver did 

# 5. ask and get how much the driver receive from that particular type of a ride



welcome
name = get_driver_name_from_user
num = get_option_number
get_option(num, name) #1show_driver_rides, 2get_driver_log
num2 = home_page_new_entry
# welcome 
# name = get_driver_name_from_user







# binding.pry

# date  type  price 
# 5/1   tour  50 
# 5/1   taxi  10
# 5/1   taxi  15
# 5/2   event 100
# 5/2    tour 50 

# 2. okay, let's log your day. - create rides
# one input should have create(date:449494, name:, type, price:)
# anymore? 
 



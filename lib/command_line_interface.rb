require 'pry'

def welcome 
    puts "Welcome Artee Pedicab"
    puts "Good job today!"
    puts "Please enter your name."
end 

def get_driver_name_from_user
    name = gets.chomp
    if name.strip.empty?
        puts "Please enter a correct name!!!"
        name = get_driver_name_from_user
    end 
    return name.capitalize
end 

def get_option_number
    puts "Press 1 for past record, press 2 for logging"
    num = gets.chomp
        if num.strip.empty? 
            puts "Please enter 1 or 2"  
        num = get_option_number
    end 
    return num.to_i
end

def get_option(num, name)
    # binding.pry
    if num == 1 
        show_driver_rides(name)
    elsif num == 2
        get_driver_log(name)
    end
end

def show_driver_rides(name)
    driver = Driver.find_by(name: name)
    driver.rides
   puts "You are #{driver.name}, #{driver.rides.first.date}, #{driver.rides.first.type.name}, #{driver.rides.first.price}"
end

# def get_log_from_driver
#     input = gets.chomp
#     if input.strip.empty?
#         puts "Please log everything"
#         input = get_log_from_driver
#     end 
#     return input
# end

def get_driver_log(name)
    puts "Let's get your log!"
    puts "What is the date"
    date = gets.chomp
    puts "What is the ride type"
    type = gets.chomp.capitalize
     real_type = Type.find_by(name: type)
    real_name = Driver.find_by(name: name)
    puts "How much did you earn?"
    price = gets.chomp.to_i

    m = Ride.create(date: date, driver: real_name, type: real_type, price: price)
    puts "Driver: #{m.driver.name}, Date: #{m.date}, Type: #{m.real_type}"
    puts "Is that correct? press y if correct or n?"
    
    # if driver types y, then
    #     we ask again, 

end







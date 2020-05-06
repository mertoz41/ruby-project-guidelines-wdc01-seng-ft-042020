require 'pry'

def welcome 
    puts "Welcome Artee Pedicab"
    puts "Good job today!"
    puts "Please enter your name."
end 

def get_driver_from_user
    input = gets.chomp
    if input.strip.empty?
        puts "Please enter a name"
        input = get_name_from_user
    end 
    return input 
end 

def show_driver_rides(name)
    driver = Driver.find_by(name: name)
    driver.rides
   puts "You are #{driver.name}, #{driver.rides.first.date}, #{driver.rides.first.type.name}, #{driver.rides.first.price}"
end






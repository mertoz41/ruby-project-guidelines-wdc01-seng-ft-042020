require "pry"

def welcome 
    puts "Welcome Artee Pedicab"
    puts "Good job today!"
    puts "Please enter your name."
end 

def get_driver_from_user
    input = gets.chomp.downcase
    if input.strip.empty?
        puts "Please enter a name"
        input = get_name_from_user
    end 
    return input 
end 

def show_driver_rides(name)
    d = Driver.all.find do |driver|
        driver.name == name     
    end
       r = Ride.all(d.id)
          
    return d
    # r = Ride.all.map do |ride|
    #     ride.driver_id == 
    # end
    
end






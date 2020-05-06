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

#     driver = Driver.all.find do |driver|
#         driver.name == name
#     end
   

#    dr = Ride.all.select do |ride|
#         ride.driver_id == driver.id
#    end 

    driver = Driver.find_by(name: name)
    driver.rides

   puts "You are #{driver.name}"
   binding.pry
   
    

  
    # r = Ride.all.map do |ride|
    #     ride.driver_id == 
    # end
    
end






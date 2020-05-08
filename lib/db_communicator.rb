require "pry"

def get_option(num, name)
    if num == 1 
        show_driver_rides(name)
    elsif num == 2
        get_driver_log(name)
    end
end

def get_driver_log(name)
    puts "__Let's log!"
    puts "__What is the date? (type ex: 06/03/2020)"
    date = gets.chomp
    splitted_date = date.split("/")
    year = splitted_date[2].to_i
    month = splitted_date[0].to_i
    day = splitted_date[1].to_i

    date2 = DateTime.new(year, month, day)
    
    puts "__What did you do?"
    type = gets.chomp.capitalize
    real_type = Type.find_by(name: type)
    real_name = Driver.find_by(name: name)
    puts "__How much did you earn for this?"
    price = gets.chomp.to_i

    m = Ride.create(date: date2, driver: real_name, type: real_type, price: price)
    dt = m.date.to_s
    d = DateTime.parse(dt).strftime("%m/%d/%Y")
    
    puts "#{m.driver.name}, #{d} , #{m.type.name}, $#{m.price}, Recorded"
    
    # if input == 1
    # get_driver_log
    # elsif input == 2 
    #     puts "Ok, let's confirm your logging before exit"
    #     show_driver_rides
    #     puts "Type 1 for correction, type 2 to really exit"
    #     input = gets.chomp
    #     if input == 1 
    #         update function.
    #     end
end
    def home_page_new_entry
        puts "__Type 1 for homepage, type 2 to log out"
        input = gets.chomp
        if input == 1
            welcome
        elsif input == 2
            puts "__Successfuly logged out!"
        end 
        
    end 

            

    def update_log(driver_name)
        Ride.find_by(name: driver_name)
        puts "Which one would you like to amend? Type the id"
    end




def add_user_input(driver)

end 
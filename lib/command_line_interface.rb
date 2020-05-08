require 'pry'

    def welcome 
        puts "Welcome to Artee Pedicab Driver Log"
        puts "Another day of Ridng Happiness, terrific job today!"
    end 

    def get_driver_name_from_user
        puts "__Enter your name"
        name = gets.chomp
            if name.strip.empty?
                puts "__Enter your name!"
                name = get_driver_name_from_user
            elsif !Driver.all.find_by(name: name.capitalize) 
                puts "__Incorrect driver name" 
                puts "__If you are new, pls talk to a manager"
                get_driver_name_from_user
            end 
        return name.capitalize
    end 



    def get_option_number
        puts "__Type 1 for your record, type 2 for a new log."
        num = gets.chomp
            if num.strip.empty? 
                puts "__Please enter 1 or 2"  
                num = get_option_number
            elsif !["1","2"].include?(num)    
                puts "__1 or 2..."
                num = get_option_number
            end
        return num.to_i
    end

    def exit_log
        puts "Goodbye!"
    end






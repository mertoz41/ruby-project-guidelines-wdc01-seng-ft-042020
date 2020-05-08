require 'pry'

    def welcome 
        puts "--Welcome to Artee Pedicab Driver Log"
        puts "--Another day of Riding Happiness, terrific job today!"
    end 

    def get_driver_name_from_user
        puts "--Enter your name:"
        name = gets.chomp
            if name.strip.empty?
                puts "--Enter your name!"
                name = get_driver_name_from_user
            elsif !Driver.all.find_by(name: name.capitalize) 
                puts "--Incorrect driver name." 
                puts "--If you are new, please talk to a manager."
                name = get_driver_name_from_user
            end 
        return name.capitalize
    end 

    def get_option_number
        puts "--Type 1 for a new log," 
        puts "--Type 2 to update existing log,"
        puts "--Type 3 most recent rides,"
        puts "--Type 4 for your log history,"
        
        num = gets.chomp
            if num.strip.empty? 
                puts "--Please enter 1 or 2."  
                num = get_option_number
            elsif !["1","2","3","4"].include?(num)    
                puts "1, 2, 3 or 4..."
                num = get_option_number
            end
        return num.to_i
    end

    def get_option(num, name)
        if num == 1 
            get_driver_log(name)
            
        elsif num == 2
            update_log(name)
            
        elsif num == 3
            show_recent_rides(name)
            
        elsif num == 4
            show_driver_rides(name)

        end
    end

    def home_page_entry 
        puts "----------------------------------"
        puts "--Type 1 to create a new log,"
        puts "--Type 2 to update log,"
        puts "--Type 3 to view most recent logs,"
        puts "--Type 4 to log out."
        input = gets.chomp
        if input.strip.empty? 
            puts "--Please enter 1, 2, 3 or 4."  
            input = home_page_entry
        elsif !["1","2","3","4"].include?(input)    
            puts "1, 2, 3, 4 ..."
            input = home_page_entry
        end
    return input.to_i
    end 
        


    def home_page_new_entry(input, name)
        
        # binding.pry 
        if input == 1
            get_driver_log(name)
            nu = home_page_entry
            return home_page_new_entry(nu, name)
        elsif input == 2
            update_log(name)
            lu = home_page_entry
            return home_page_new_entry(lu, name)
        elsif input == 3
            show_recent_rides(name)
           som = home_page_entry 
            return home_page_new_entry(som, name) 
        elsif input == 4
            puts "Logged out!"
        end 
    end 

    
    def exit_log
        puts "--Goodbye!"
    end






require 'pry'

def welcome 
    puts "Welcome to Artee Pedicab Driver Log"
    puts "Another day of Ridng Happiness, terrific job today!"
end 

def get_driver_name_from_user
    puts "__Enter your name"
    name = gets.chomp
    if name.strip.empty?
        puts "__Enter a correct name!"
        name = get_driver_name_from_user
    elsif !Driver.all.find_by(name: name.capitalize) 
        puts "Incorrect driver name" 
        puts "If you are new, pls talk to a manager"
        get_driver_name_from_user
    end 
    return name.capitalize
end 

def get_option_number
    puts "__Type 1 to see your record, type 2 to create a new log."
    num = gets.chomp
        if num.strip.empty? 
            puts "Please enter 1 or 2"  
           num = get_option_number
        elsif !["1","2"].include?(num)    
        puts "Enter 1 or 2"
        num = get_option_number
        end
        
        # binding.pry
        # elsif num != "2"
        # puts "Enter 1 or 2"
        # num = get_option_number
        # end
    return num.to_i
end




    def exit_log
        puts "Goodbye!"
    end



# end


# end




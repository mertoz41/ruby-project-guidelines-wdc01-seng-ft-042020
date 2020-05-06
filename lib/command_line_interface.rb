def welcome 
    puts "Welcome Artee Pedicab"
    puts "Good job today!"
    puts "Please enter the date for your log:"
end 

def get_name_from_user
    input = gets.chomp.downcase
    if input.strip.empty?
        puts "Please enter a name"
        input = get_name_from_user
    end 
    return input 
end 


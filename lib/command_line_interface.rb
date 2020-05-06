def welcome 
    puts "Welcome Artee Pedicab"
    puts "Good job today!"
    puts "What is your name?"
end 

def get_name_from_user
    input = gets.chomp.downcase
    if input.strip.empty?
        puts "Please enter a name"
        input = get_name_from_user
    end 
    return input 
end 


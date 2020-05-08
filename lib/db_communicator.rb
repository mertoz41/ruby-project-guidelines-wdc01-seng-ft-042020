require "pry"

def get_option(num, name)
    if num == 1 
        show_driver_rides(name)
    elsif num == 2
        get_driver_log(name)
    end
end

def add_date_type_price_to_hash(name)
    hash = Hash.new
    hash{} 



def show_driver_rides(name)
    driver = Driver.find_by(name: name)
        dd = driver.rides.map do |r|
            r.date
            end
        parse_date = dd.map do |date|
            DateTime.parse(date).strftime("%m/%d/%Y")
            end
        dt = driver.types.map do |t|
            t.name
            end
        dp = driver.rides.map do |p|
            r.price
            end
        hash ={} 
        driver.rides.each do |ride|
            hash[Date:] 

            def get_character_films_url(name, hash)

                film_array = []
                hash["results"].each do |char|
                  if char["name"] == name
                    film_array = char["films"]
                  end
                end

        {Date: [05/05/2020, 05/05/2020, 05/07/2020],
         Type: ["Taxi", "Taxi", "Tour"], 
         Price: [40, 50, 100]}


        [ {Date: 05/05/2020, Type: "Event", Price: 90},
        {Date: 05/05/2020, Type: "Event", Price: 90}
        {Date: 05/07/2020, Type: "Event", Price: 90} ]


    driver.rides.each do |r|
        hash[date:] r.date
    end
    
     Date: , Type: , Price:            

    puts "#{driver.name}, #{dt}, #{driver.rides.first.type.name}, $#{driver.rides.first.price}"
        
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
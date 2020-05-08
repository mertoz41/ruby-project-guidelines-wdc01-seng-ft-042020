require "pry"



def show_driver_rides(name)
    driver = Driver.find_by(name: name)
    rides = driver.rides.order(date: :desc)
    # binding.pry
    rides.each do |ride| puts "id:#{ride.id}. #{ride.date.strftime("%m/%d/%Y")}, #{ride.type.name}, $#{ride.price}"
    end
end

def show_recent_rides(name)
    driver = Driver.find_by(name: name)
    rides = driver.rides.order(date: :desc)
    ride_rides = rides.take(10)
    ride_rides.each do |ride| puts "id:#{ride.id}. #{ride.date.strftime("%m/%d/%Y")}, #{ride.type.name}, $#{ride.price}"
    end
end 



def get_driver_log(name)
    puts "--Let's log!"
    puts "--What is the date? (date ex: 06/03/2020)"
    date = gets.chomp
    if date.strip.empty?
        puts "--Please enter a date."
        date = get_driver_log(name)
    end 
    splitted_date = date.split("/")
    year = splitted_date[2].to_i
    month = splitted_date[0].to_i
    day = splitted_date[1].to_i

    date2 = DateTime.new(year, month, day)
    
    puts "--What type of ride? (type ex: tour, taxi, event)"
    type = gets.chomp.capitalize
    real_type = Type.find_by(name: type)
    # binding.pry
    real_name = Driver.find_by(name: name)
    puts "--How much did you earn for this?"
    price = gets.chomp.to_i

    m = Ride.create(date: date2, driver: real_name, type: real_type, price: price)
    dt = m.date.to_s
    d = DateTime.parse(dt).strftime("%m/%d/%Y")
    
    puts "#{m.driver.name}, #{d} , #{m.type.name}, $#{m.price}, Logged."
end


def update_log(name)
    driver = Driver.find_by(name: name)
    rides = driver.rides.order(date: :desc)
    
    rides.each do |ride| puts "id: #{ride.id}. #{ride.date.strftime("%m/%d/%Y")}, #{ride.type.name}, $#{ride.price}"
    end 
    puts "--Type the id you wish to update."
    
    id = gets.chomp.to_i   
    picked_id = rides.find(id)
    puts "#{picked_id.date.strftime("%m/%d/%Y")}, #{picked_id.type.name}, $#{picked_id.price}"
    puts "--Type new date. (date ex: 06/03/2020)"
    date = gets.chomp
    splitted_date = date.split("/")
    year = splitted_date[2].to_i
    month = splitted_date[0].to_i
    day = splitted_date[1].to_i
    date_updated = DateTime.new(year, month, day)
    puts "--Type new type."
    type = gets.chomp.capitalize
    nu_type = Type.find_by(name: type)
    puts "--Type new price."
    price = gets.chomp.to_i

    picked_id.update(date: date_updated, type: nu_type, price: price)
    # binding.pry
    puts "Log updated:"
    puts "#{picked_id.date.strftime("%m/%d/%Y")}, #{picked_id.type.name}, $#{picked_id.price}"
   
end




# def add_user_input(driver)

# end 
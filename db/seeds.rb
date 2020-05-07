Driver.delete_all
Type.delete_all
Ride.delete_all


injae = Driver.create(name: "Injae", rank: "R4", active: true)
mert = Driver.create(name: "Mert", rank: "Trainee", active: true)
mike = Driver.create(name: "Mike", rank: "Trainee", active: true)
shaq = Driver.create(name: "Shaq", rank: "R3", active: false)

tour = Type.create(name: "Tour")
taxi = Type.create(name: "Taxi")
event = Type.create(name: "Event")

taxi1 = Ride.create(date: DateTime.new(2015,05,22),  driver: mert, type: taxi, price: 10)
taxi2 = Ride.create(date: DateTime.new(2015,05,22), driver: mike, type: taxi, price: 20)
taxi3 = Ride.create(date: DateTime.new(2015,05,22), driver: mike, type: taxi, price: 30)
taxi4 = Ride.create(date: DateTime.new(2015,05,22), driver: mike, type: taxi, price: 10)
taxi5 = Ride.create(date: DateTime.new(2016,06,22), driver: mert, type: taxi, price: 15)
taxi6 = Ride.create(date: DateTime.new(2016,9,01), driver: mert, type: taxi, price: 40)
taxi7 = Ride.create(date: DateTime.new(2016,9,01), driver: mert, type: taxi, price: 10)

event1 = Ride.create(date: DateTime.new(2014,07,12), driver: shaq, type: event, price: 200)
event2 = Ride.create(date: DateTime.new(2014,07,12), driver: injae, type: event, price: 300)
event3 = Ride.create(date: DateTime.new(2014,07,12), driver: mert, type: event, price: 150)
event4 = Ride.create(date: DateTime.new(2014,07,22), driver: mike, type: event, price: 150)
event5 = Ride.create(date: DateTime.new(2019,8,12), driver: injae, type: event, price: 300)
event6 = Ride.create(date: DateTime.new(2019,06,12), driver: mike, type: event, price: 250)

tour1 = Ride.create(date: DateTime.new(2020,04,20), driver: injae, type: tour, price: 15)
tour2 = Ride.create(date: DateTime.new(2020,05,02), driver: shaq, type: tour, price: 50)
tour3 = Ride.create(date: DateTime.new(2020,05,02), driver: shaq, type: tour, price: 100)
tour4 = Ride.create(date: DateTime.new(2020,05,02), driver: shaq, type: tour, price: 100)
tour5 = Ride.create(date: DateTime.new(2020,05,03), driver: injae, type: tour, price: 80)
tour6 = Ride.create(date: DateTime.new(2020,05,03), driver: injae, type: tour, price: 100)
tour7 = Ride.create(date: DateTime.new(2020,05,03), driver: injae, type: tour, price: 100)










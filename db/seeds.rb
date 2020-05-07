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

taxi1 = Ride.create(date: "5/22/2012", driver: mert, type: taxi, price: 10)
taxi2 = Ride.create(date: "5/22/2015", driver: mike, type: taxi, price: 20)
taxi3 = Ride.create(date: "5/22/2015", driver: mike, type: taxi, price: 30)
taxi4 = Ride.create(date: "5/22/2015", driver: mike, type: taxi, price: 10)
taxi5 = Ride.create(date: "6/22/2016", driver: mert, type: taxi, price: 15)
taxi6 = Ride.create(date: "6/22/2012", driver: mert, type: taxi, price: 40)
taxi7 = Ride.create(date: "6/22/2012", driver: mert, type: taxi, price: 10)

event1 = Ride.create(date: "7/12/2014", driver: shaq, type: event, price: 200)
event2 = Ride.create(date: "7/12/2014", driver: injae, type: event, price: 300)
event3 = Ride.create(date: "7/12/2014", driver: mert, type: event, price: 150)
event4 = Ride.create(date: "7/12/2014", driver: mike, type: event, price: 150)
event5 = Ride.create(date: "8/12/2019", driver: injae, type: event, price: 300)
event6 = Ride.create(date: "8/12/2019", driver: mike, type: event, price: 250)

tour1 = Ride.create(date: "4/20/2020", driver: injae, type: tour, price: 15)
tour2 = Ride.create(date: "5/2/2020", driver: shaq, type: tour, price: 50)
tour3 = Ride.create(date: "5/2/2020", driver: shaq, type: tour, price: 100)
tour4 = Ride.create(date: "5/2/2020", driver: shaq, type: tour, price: 100)
tour5 = Ride.create(date: "5/3/2020", driver: injae, type: tour, price: 80)
tour6 = Ride.create(date: "5/3/2020", driver: injae, type: tour, price: 100)
tour7 = Ride.create(date: "5/3/2020", driver: injae, type: tour, price: 100)










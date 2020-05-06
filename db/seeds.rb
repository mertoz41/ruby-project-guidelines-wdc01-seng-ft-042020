Driver.delete_all
Type.delete_all
Ride.delete_all


injae = Driver.create(name: "Injae", rank: "R4", active: true)
mert = Driver.create(name: "Mert", rank: "Trainee", active: true)
mike = Driver.create(name: "Mike", rank: "Trainee", active: true)

tour = Type.create(name: "Tour")
taxi = Type.create(name: "Taxi")
event = Type.create(name: "Event")

tour1 = Ride.create(date: "4/20/2020", driver: injae, type: tour, price: 15)
taxi1 = Ride.create(date: "5/22/2012", driver: mert, type: taxi, price: 10)
event1 = Ride.create(date: "7/12/2014", driver: mike, type: event, price: 25)











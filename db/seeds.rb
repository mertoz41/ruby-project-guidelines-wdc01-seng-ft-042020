

injae = Driver.new("Injae", "R4", 1)
Driver.create(name: "Injae", rank: "R4", 1)
mert = Driver.new("Mert", "Trainee", 1)

event = Type.new("Event", 100)
taxi = Type.new("Taxi", 10)
tour = Type.new("Tour", 50)

tour1 = Ride.new(mert, tour, "03/13/2010")
event1 = Ride.new(injae, event, "04/20/2011")


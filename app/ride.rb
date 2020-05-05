class Ride < ActiveRecord::Base
    attr_reader :driver_id, :type_id, :date

    @@all = []

    def initialize(driver_id, type_id, date)
        @driver_id = driver_id
        @type_id = type_id
        @date = date
        @@all << self 
    end  

    def self.all 
        @@all 
    end 
end 
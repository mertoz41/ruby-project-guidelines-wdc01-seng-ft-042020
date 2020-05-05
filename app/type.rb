class Type < ActiveRecord::Base
    attr_reader :name
    attr_accessor :price
    @@all = []
    def initialize(name, price)
        @name = name 
        @price = price
        @@all << self
    end 

    def self.all 
        @@all 
    end 
end 
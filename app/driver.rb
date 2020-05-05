class Driver < ActiveRecord::Base

    attr_reader :name
    attr_accessor :rank, :active
    @@all = []

    def initialize(name, rank, active)
        @name = name 
        @rank = rank 
        @active = active
        @@all << self 
    end 

    def self.all 
        @@all
    end 
    
end 
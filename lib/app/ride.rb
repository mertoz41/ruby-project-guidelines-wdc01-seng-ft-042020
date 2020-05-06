class Ride < ActiveRecord::Base
    belongs_to :drivers
    belongs_to :types
    
end 
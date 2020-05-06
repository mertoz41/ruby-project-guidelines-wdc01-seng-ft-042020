class Driver < ActiveRecord::Base
    has_many :rides
    has_many :types, through: :rides
    

end 
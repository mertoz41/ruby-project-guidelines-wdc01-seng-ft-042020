class Driver < ActiveRecord::Base
    has_many :types, through: :rides
    has_many :rides

end 
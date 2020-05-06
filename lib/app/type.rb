class Type < ActiveRecord::Base
    has_many :rides
    has_many :drivers, through: :rides
   
end 
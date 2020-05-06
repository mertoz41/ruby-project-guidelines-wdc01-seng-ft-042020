class CreateRideTable < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :date
      t.integer :driver_id
      t.integer :type_id
      t.integer :price
  end
end
end 

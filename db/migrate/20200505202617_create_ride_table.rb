class CreateRideTable < ActiveRecord::Migration[5.0]
  def change
    create_table :ride do |t|
      t.integer :driver_id
      t.integer :type_id
  end
end
end 

class CreateRideTable < ActiveRecord::Migration[5.0]
  def change
    create_table :ride do |t|
      t.text :driver_name
      t.text :type_name
      t.string :date
  end
end
end 

class CreateDriverTable < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :rank
      t.boolean :active
  end
end
end 

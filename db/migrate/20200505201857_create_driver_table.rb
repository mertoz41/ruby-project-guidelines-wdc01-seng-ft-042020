class CreateDriverTable < ActiveRecord::Migration[5.0]
  def change
    create_table :driver do |t|
      t.string :name
      t.string :rank
      t.boolean :active
  end
end
end 

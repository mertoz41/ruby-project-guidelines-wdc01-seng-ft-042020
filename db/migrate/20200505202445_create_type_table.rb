class CreateTypeTable < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t| 
      t.string :name
    end
  end
end

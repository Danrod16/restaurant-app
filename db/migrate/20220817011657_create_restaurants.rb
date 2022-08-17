class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.integer :capacity
      t.string :name

      t.timestamps
    end
  end
end

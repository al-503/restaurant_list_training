class CreateRestaurantLists < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end

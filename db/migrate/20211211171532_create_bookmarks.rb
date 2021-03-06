class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :restaurant_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end

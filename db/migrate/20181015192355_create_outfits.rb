class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.integer :user_id
      t.integer :stylist_id
      t.integer :shoes_id
      t.integer :trousers_id
      t.integer :shirt_id
      t.integer :checked

      t.timestamps
    end
  end
end

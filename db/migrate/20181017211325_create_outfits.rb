class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.integer :user_id
      t.integer :stylist_id
      t.integer :shoes_id
      t.integer :trousers_id
      t.string :shirt_id
      t.integer :integer_checked
      t.string :type
      t.string :season
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end

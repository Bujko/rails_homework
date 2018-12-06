class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.integer :user_id
      t.integer :stylist_id
      t.integer :shoe_id
      t.integer :trouser_id
      t.integer :cloth_id
      t.integer :integer_checked
      t.string :outfit_type
      t.string :season
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end

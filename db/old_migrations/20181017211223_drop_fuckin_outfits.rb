class DropFuckinOutfits < ActiveRecord::Migration[5.2]
  def change
    drop_table :outfits
  end
end

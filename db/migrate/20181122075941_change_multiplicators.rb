class ChangeMultiplicators < ActiveRecord::Migration[5.2]
  def up
    rename_column :outfits, :shoes_id, :shoe_id
    rename_column :outfits, :trousers_id, :trouser_id
  end
  def down
    rename_column :outfits, :shoe_id, :shoes_id
    rename_column :outfits, :trouser_id, :trousers_id
  end
end

class ChangeMultiplicators < ActiveRecord::Migration[5.2]
  def up
    rename_column :outfits, :shoe_id, :shoe_id
    rename_column :outfits, :trouser_id, :trouser_id
  end
  def down
    rename_column :outfits, :shoe_id, :shoe_id
    rename_column :outfits, :trouser_id, :trouser_id
  end
end

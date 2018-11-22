class ChangeBack < ActiveRecord::Migration[5.2]
  def up
    rename_column :outfits, :integer, :shirt_id
  end
  def down
    rename_column :outfits, :shirt_id, :string
  end
end

class ChangeStrToInt < ActiveRecord::Migration[5.2]
  def up
    change_column :outfits, :shirt_id, :integer
  end
  def down
    change_column :outfits, :shirt_id, :string
  end
end

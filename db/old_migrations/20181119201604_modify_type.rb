class ModifyType < ActiveRecord::Migration[5.2]
  def up
    rename_column :outfits, :type, :outfit_type
  end
  def down
    rename_column :outfits, :outfit_type, :type
  end
end

class CreateCloths < ActiveRecord::Migration[5.2]
  def change
    create_table :cloths do |t|
      t.integer :user_id
      t.string :picture

      t.timestamps
    end
  end
end

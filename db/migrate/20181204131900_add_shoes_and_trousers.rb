class AddShoesAndTrousers < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.integer :user_id
      t.string :picture

      t.timestamps
    end
    create_table :trousers do |t|
      t.integer :user_id
      t.string :picture

      t.timestamps
    end
  end
end

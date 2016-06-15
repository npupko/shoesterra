class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.decimal :price
      t.integer :min_size
      t.integer :max_size
      t.string :season
      t.string :sex
      t.string :top_matereal
      t.string :pad_matereal
      t.string :sole_matereal
      t.string :type

      t.timestamps null: false
    end
  end
end

class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :name
      t.string :link

      t.timestamps null: false
    end
  end
end

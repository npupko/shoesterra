class AddColomnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :discount_status, :integer
    add_column :products, :popular_status, :boolean
  end
end

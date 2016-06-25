class AddSizesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :size_34, :boolean
    add_column :products, :size_35, :boolean
    add_column :products, :size_36, :boolean
    add_column :products, :size_37, :boolean
    add_column :products, :size_38, :boolean
    add_column :products, :size_39, :boolean
    add_column :products, :size_40, :boolean
    add_column :products, :size_41, :boolean
    add_column :products, :size_42, :boolean
    add_column :products, :size_43, :boolean
    add_column :products, :size_44, :boolean
    add_column :products, :size_45, :boolean
    add_column :products, :size_46, :boolean
    add_column :products, :size_47, :boolean
    add_column :products, :size_48, :boolean
    remove_column :products, :max_size, :integer
    remove_column :products, :min_size, :integer
  end
end

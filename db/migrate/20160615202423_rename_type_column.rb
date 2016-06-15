class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :products, :type, :shoe_type
  end
end

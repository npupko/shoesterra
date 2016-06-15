class AddImageColumnsToProduct < ActiveRecord::Migration
  def up
    add_attachment :products, :main_image
    add_attachment :products, :first_image
    add_attachment :products, :second_image
    add_attachment :products, :third_image
    add_attachment :products, :fourth_image
    add_attachment :products, :fifth_image
  end

  def down
    remove_attachment :products, :main_image
    remove_attachment :products, :first_image
    remove_attachment :products, :second_image
    remove_attachment :products, :third_image
    remove_attachment :products, :fourth_image
    remove_attachment :products, :fifth_image
  end
end

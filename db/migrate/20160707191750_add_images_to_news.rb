class AddImagesToNews < ActiveRecord::Migration
  def up
    add_attachment :news, :news_image
  end

  def down
    remove_attachment :news, :news_image
  end
end

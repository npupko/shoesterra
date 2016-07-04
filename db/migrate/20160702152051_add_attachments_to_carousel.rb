class AddAttachmentsToCarousel < ActiveRecord::Migration
  def up
    add_attachment :carousels, :carousel_image
  end

  def down
    remove_attachment :carousels, :carousel_image
  end
end

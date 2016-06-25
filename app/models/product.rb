class Product < ActiveRecord::Base
  has_attached_file :main_image, styles: { medium: "250x160>", thumb: "100x100>" },
                  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
  searchable do
    text :brand
    string :brand
    float :price
    integer :min_size
    integer :max_size
    string :season
    string :sex
    string :top_matereal
    string :pad_matereal
    string :sole_matereal
    string :shoe_type
end
end

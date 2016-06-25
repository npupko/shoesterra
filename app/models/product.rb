class Product < ActiveRecord::Base
  has_attached_file :main_image, styles: { medium: "250x160>", thumb: "100x100>" },
                  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
  searchable do
    text :brand
    string :brand
    float :price
    string :season
    string :sex
    string :top_matereal
    string :pad_matereal
    string :sole_matereal
    string :shoe_type
    boolean :size_34
    boolean :size_35
    boolean :size_36
    boolean :size_37
    boolean :size_38
    boolean :size_39
    boolean :size_40
    boolean :size_41
    boolean :size_42
    boolean :size_43
    boolean :size_44
    boolean :size_45
    boolean :size_46
    boolean :size_47
    boolean :size_48
end
end

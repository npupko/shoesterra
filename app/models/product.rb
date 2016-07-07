class Product < ActiveRecord::Base
  has_attached_file :main_image, styles: {large: "900x600>", 
                                          medium: "250x160>", 
                                          catalog: "200x130>",
                                          general: "360x240>"},
                  default_url: "/images/:style/missing.png"
  has_attached_file :first_image, styles: {large: "900x600>", 
                                           medium: "250x160>",
                                           catalog: "200x130>",
                                           thumb: "150x90>"},
                  default_url: "/images/:style/missing.png"
  has_attached_file :second_image, styles: {large: "900x600>", 
                                            medium: "250x160>",
                                            catalog: "200x130>",
                                            thumb: "150x90>"},
                  default_url: "/images/:style/missing.png"
  has_attached_file :third_image, styles: {large: "900x600>", 
                                           medium: "250x160>",
                                           catalog: "200x130>",
                                           thumb: "150x90>"},
                  default_url: "/images/:style/missing.png"
  has_attached_file :fourth_image, styles: {large: "900x600>",
                                            medium: "250x160>",
                                            catalog: "200x130>",
                                            thumb: "150x90>"},
                  default_url: "/images/:style/missing.png"
  has_attached_file :fifth_image, styles: {large: "900x600>", 
                                           medium: "250x160>",
                                           catalog: "200x130>",
                                           thumb: "150x90>"},
                  default_url: "/images/:style/missing.png"

  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
  searchable do
    text :brand
    text :vendor
    boolean :priority
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

  def to_param
    "#{id} #{shoe_type} #{brand} #{vendor}".parameterize
  end
end

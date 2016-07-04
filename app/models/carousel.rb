class Carousel < ActiveRecord::Base
    has_attached_file :carousel_image, styles: { default: "1280x400>" },
                  default_url: "/images/:style/missing.png"
    validates_attachment_content_type :carousel_image, content_type: /\Aimage\/.*\Z/
end

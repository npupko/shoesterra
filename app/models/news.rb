class News < ActiveRecord::Base
  has_attached_file :news_image, styles: {medium: "250x160>"},
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :news_image, content_type: /\Aimage\/.*\Z/
end

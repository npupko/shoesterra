class News < ActiveRecord::Base
  has_attached_file :news_image, styles: {medium: "250x160>", news_front: "500x270>"},
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :news_image, content_type: /\Aimage\/.*\Z/
  self.per_page = 10
  searchable do
    string :news_type
  end
end

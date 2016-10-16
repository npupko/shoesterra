# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

News.delete_all

Product.delete_all


image_path = "#{Rails.root}/MOCK_DATA.csv"

require 'csv'    

csv_text = File.read(image_path)
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Product.create!(row.to_hash)
end

Product.take(8).each do |t|
     t.popular_status = true
     t.save!
end


10.times do |n|
     News.create(   :id => n,
                    :title => "Новость #{rand(10000...99999)}",
                    :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                              Quidem repudiandae, eum nihil doloribus explicabo qui! 
                              Laudantium nemo facilis, minus provident eaque repellendus 
                              laboriosam adipisci necessitatibus possimus fugit animi saepe dignissimos.',
                    :news_type => "Новость")
end

(11..20).each do |a|
     News.create(   :id => a,
                    :title => "Акция #{rand(10000...99999)}",
                    :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                              Quidem repudiandae, eum nihil doloribus explicabo qui! 
                              Laudantium nemo facilis, minus provident eaque repellendus 
                              laboriosam adipisci necessitatibus possimus fugit animi saepe dignissimos.',
                    :news_type => "Акции")
end

(21..30).each do |p|
     News.create(   :id => p,
                    :title => "Покупателю #{rand(10000...99999)}",
                    :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                              Quidem repudiandae, eum nihil doloribus explicabo qui! 
                              Laudantium nemo facilis, minus provident eaque repellendus 
                              laboriosam adipisci necessitatibus possimus fugit animi saepe dignissimos.',
                    :news_type => "Покупателю")
end

puts "Success: Theme data loaded"

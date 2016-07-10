# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Product.delete_all

image_path = "#{Rails.root}/MOCK_DATA.csv"

require 'csv'    

csv_text = File.read(image_path)
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Product.create!(row.to_hash)
end

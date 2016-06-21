# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
image_path = "#{Rails.root}/app/assets/images/image.png"
image_file = File.new(image_path)
Product.create(:id => 1,
               :brand => 'Peter Kaiser',
               :price => '125.4',
               :min_size => '36',
               :max_size => '42',
               :season => 'Лето',
               :sex => 'Мужская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Туфли',
               :main_image => image_file)

Product.create(:id => 2,
               :brand => 'Gabriele',
               :price => '110.0',
               :min_size => '35',
               :max_size => '41',
               :season => 'Лето',
               :sex => 'Мужская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Туфли',
               :main_image => image_file)

Product.create(:id => 3,
               :brand => 'Jane Klain',
               :price => '100.1',
               :min_size => '36',
               :max_size => '43',
               :season => 'Лето',
               :sex => 'Мужская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Туфли',
               :main_image => image_file)

Product.create(:id => 4,
               :brand => 'S.Oliver',
               :price => '123.4',
               :min_size => '34',
               :max_size => '43',
               :season => 'Лето',
               :sex => 'Мужская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Туфли',
               :main_image => image_file)

Product.create(:id => 5,
               :brand => 'Peter Kaiser',
               :price => '99.5',
               :min_size => '38',
               :max_size => '42',
               :season => 'Зима',
               :sex => 'Мужская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Кроссовки',
               :main_image => image_file)

Product.create(:id => 6,
               :brand => 'Gabriele',
               :price => '45.2',
               :min_size => '32',
               :max_size => '41',
               :season => 'Зима',
               :sex => 'Женская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Кроссовки',
               :main_image => image_file)

Product.create(:id => 7,
               :brand => 'Jane Klain',
               :price => '140.8',
               :min_size => '33',
               :max_size => '43',
               :season => 'Зима',
               :sex => 'Женская обувь',
               :top_matereal => 'Кожа',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Кроссовки',
               :main_image => image_file)

Product.create(:id => 8,
               :brand => 'S.Oliver',
               :price => '160.5',
               :min_size => '33',
               :max_size => '41',
               :season => 'Весна/Осень',
               :sex => 'Женская обувь',
               :top_matereal => 'Кожзам',
               :pad_matereal => 'Текстиль',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Кеды',
               :main_image => image_file)

Product.create(:id => 9,
               :brand => 'S.Oliver',
               :price => '111.5',
               :min_size => '34',
               :max_size => '44',
               :season => 'Весна/Осень',
               :sex => 'Женская обувь',
               :top_matereal => 'Кожзам',
               :pad_matereal => 'Кожа',
               :sole_matereal => 'Полимерный материал',
               :shoe_type => 'Кеды',
               :main_image => image_file)

Product.create(:id => 10,
               :brand => 'Jane Klain',
               :price => '130.8',
               :min_size => '35',
               :max_size => '44',
               :season => 'Весна/Осень',
               :sex => 'Женская обувь',
               :top_matereal => 'Кожзам',
               :pad_matereal => 'Кожа',
               :sole_matereal => 'Неполимерный материал',
               :shoe_type => 'Кеды',
               :main_image => image_file)

puts "Success: Theme data loaded"

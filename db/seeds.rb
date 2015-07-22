# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

#Categories
mobile = Category.create(name: 'mobile_tablets', title: 'Mobiles and Tablets')
electronics = Category.create(name: 'electronics_and_computers', title: 'Electronics and Computers')
vehicles = Category.create(name: 'vehicles', title: 'Vehicles')
home_furnitures = Category.create(name: 'home_furnitures', title: 'Home and Furnitures')
animals = Category.create(name: 'animals', title: 'Animals')
books = Category.create(name: 'books', title: 'Books')
musics = Category.create(name: 'music', title: 'Music')
movies = Category.create(name: 'movies', title: 'Movies')
sports = Category.create(name: 'sports', title: 'Sports')
hobbies = Category.create(name: 'hobbies', title: 'Hobbies')
fashion_beauty = Category.create(name: 'fashion_beauty', title:'Fashion and Beauty')
kids_baby_products = Category.create(name: 'kids_and_baby_products', title: 'Kids and Baby Products')

#Sub-Categories
%w(mobile_phones tablets accessories others).each{|sc| mobile.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(laptops peripherals camera camera_accessories fax_and_office_equipments home_and_kitchen_appliances inverters,_ups_and_generators speakers lcd led crt television_sets music_systems security_equipments industrial_tools gaming_consoles accessories others).each{|sc| electronics.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(cars motorcycles scooters bicycles commercial_vehicles spare_parts accessories).each{|sc| vehicles.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(antiques baby stationaries health_products home_furnitures office_furnitures home_decor household toys others).each{|sc| home_furnitures.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(dogs cats birds fishes aquariums pet_accessories others).each{|sc| animals.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(new_releases bestsellers acedemic_professional enterance_exam litreture_and_fiction children_and_teens  comics_and_graphic_novels self_help business_and_management biographies_and_autobiograhies history_and_politics).each{|sc| books.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(new_releases hollywood_movies bollywood_movies regional_movies TV_shows_and_documentries kids_and_educational health_and_fitness).each{|sc| movies.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(new_releases international rock pop jazz bollywood indian_classical_and devotional regional).each{|sc| musics.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(cricket_accessories football_accessories tennis_accessories indoor_games gym_and_fitness others).each{|sc| sports.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(paintings musical_instruments coins collectibles accessories others).each{|sc| hobbies.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(jewellery clothes men_suits_and_partywear women_partywear watches footwear bags_and_luggage).each{|sc| fashion_beauty.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

%w(toys boys_clothings girls_clothings baby_boys_clothings baby_girls_clothings strollers kids_furnitures car_seats nutrition baby_boys_footwear baby_girls_footwear boys_footwear girls_footwear).each{|sc| kids_baby_products.sub_categories.create(name: sc, title: sc.gsub("_", " ").titleize)}

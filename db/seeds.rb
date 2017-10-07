# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Establishment.create!(title: "Imperiya Pizzy", description: "Lorem ipsum dolor ")
# Establishment.create!(title: "Nagi Maki", description: "Lorem ipsum dolor sit a")
# Establishment.create!(title: "Coffee", description: "Lorem ipsum dolor sit amet")
# Establishment.create!(title: "Dostuk", description: "Lorem ipsum dolor sit amet")

# Category.create!(title: "cat1", establishment_id: 7)
# Category.create!(title: "cat2", establishment_id: 6)
# Category.create!(title: "cat3", establishment_id: 9)
# Category.create!(title: "cat4", establishment_id: 7)
# Category.create!(title: "cat5", establishment_id: 8)
# Category.create!(title: "cat6", establishment_id: 9)
# Category.create!(title: "cat7", establishment_id: 8)

# Dish.create!(title: "dish1", price: 130, description: "Lorem ipsum dolor sit amet", category: 10)
# Dish.create!(title: "dish2", price: 80,  description: "Lorem ipsum dolor sit amet, ", category: 13)
# Dish.create!(title: "dish3", price: 75,  description: "Какое нибудь вкусное мороженое", category: 16)
# Dish.create!(title: "dish4",   price: 100, description: "wfsdfsdf wef wfvwevweeww", category: 13)
# Dish.create!(title: "dish4", price: 100,  description: "tumynynynynyw ynwr n wry nwnr", category: 11)
# Dish.create!(title: "dish6", price: 100,  description: "trtrbtwr wrnr wnwrn rw n", category: 10)
# Dish.create!(title: "dish7", price: 100,  description: "rn rnrwn wr rwrwynwrynrywn", category: 15)
# Dish.create!(title: "dish8", price: 100,   description: "nwyrnrywnwrynwrynwrywn yrnwrn", category: 14)
# Dish.create!(title: "dish9", price: 100,  description: "Мrnrwynwyrnrywnrwynrynnrwе", category: 13)
admin = User.create!(username: 'Andrew', email: 'admin@admin.ru', password: 'qwerty')
user = User.create!(username: 'User', email: 'user@user.ru', password: 'qwerty')


5.times do
	establishment = Establishment.create!(title: Faker::Company.unique.name, 
																				description: Faker::Lorem.sentence,
																				image: File.new("#{Rails.root}/app/assets/images/default.png"))
end

5.times do
	category = Category.create!(title: Faker::Color.unique.color_name,
															establishment_id: Faker::Number.between(1, 5))

	4.times do
		dish = Dish.create!(title: Faker::Food.dish,
												price: Faker::Number.between(10, 50),
												description: Faker::Lorem.sentence,
												category_id: category.id)
	end
end

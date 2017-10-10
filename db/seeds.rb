# cart = Cart.create!()
admin = User.create!(username: 'Andrew', 
										email: 'admin@admin.ru', 
										password: 'qwerty', 
										admin: true,
										adress: Faker::Address.street_address,
										phone_number: Faker::PhoneNumber.cell_phone)

user = User.create!(username: 'User', 
										email: 'user@user.ru', 
										password: 'qwerty',
										adress: Faker::Address.street_address,
										phone_number: Faker::PhoneNumber.cell_phone)


5.times do
	establishment = Establishment.create!(title: Faker::Company.unique.name, 
																				description: Faker::Lorem.sentence,
																				image: File.new("#{Rails.root}/app/assets/images/default.png"))


	4.times do
		dish = Dish.create!(title: Faker::Food.dish,
												price: Faker::Number.between(10, 50),
												description: Faker::Lorem.sentence,
												establishment_id: establishment.id)
	end
end

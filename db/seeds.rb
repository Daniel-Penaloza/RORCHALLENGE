@user = Seller.create!(first_name: "seller", last_name: "user", email: "selleruser@test.com", 
					   password: "asdfasdf", password_confirmation: "asdfasdf")

puts "1 seller has been created"

@admin = Admin.create!(first_name: "admin", last_name: "user", email: "adminuser@test.com",
						password: "asdfasdf", password_confirmation: "asdfasdf")

puts "1 admin has been created"

10.times do |category|
	Category.create(name: "number #{category} category")
end

puts "10 categories are been created"


Product.create!(name: "Game of thrones", price: 25.75, description: ["War", "Blood", "Politics"], 
			    category_id: Category.first.id, user_id: @user.id )

puts "1 book has been created"

Product.create!(name: "Iphone 6", price: 350.99, description: ["The best phone ever made", "Latest technology", "Designed by apple"], 
				category_id: Category.second.id, user_id: @user.id )

puts "1 cellphone has been created"

Product.create!(name: "Television", price: 450.50, description: ["52 inches", "LCD - 3D included", "1 month of warranty"],
				category_id: Category.third.id, user_id: @admin.id)

puts "1 television has been created"
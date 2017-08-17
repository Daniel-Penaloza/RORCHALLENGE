@image = File.open(File.join(Rails.root,'app/assets/images/user_image.png'))

@user = Seller.create!(first_name: "seller", last_name: "user", email: "selleruser@test.com", 
					   password: "asdfasdf", password_confirmation: "asdfasdf", image: @image, phone: "(123) 456-7890")
	
@user_2 = Seller.create!(first_name: "seller", last_name: "user2", email: "selleruser2@test.com", 
					   password: "asdfasdf", password_confirmation: "asdfasdf", image: @image, phone: "(456) 789-0123")

8.times do |seller|
	Seller.create!(first_name: "seller #{seller}", last_name: "user #{seller}", email: "seller#{seller}user#{seller}@test.com",
					password: "asdfasdf", password_confirmation: "asdfasdf", image: @image, phone: "(12#{seller} 456-789)")
end

puts "10 sellers has been created"

@admin = Admin.create!(first_name: "admin", last_name: "user", email: "adminuser@test.com",
						password: "asdfasdf", password_confirmation: "asdfasdf", image: @image, phone: "(098) 765-4321")

puts "1 admin has been created"

10.times do |category|
	Category.create(name: "number #{category} category")
end

puts "10 categories are been created"


Product.create!(name: "Game of thrones", price: 25.75, summary: "A nice show", description: ["War", "Blood", "Politics"], 
			    category_id: Category.first.id, user_id: @user.id )

puts "1 book has been created"

Product.create!(name: "Iphone 6", price: 350.99, summary: "An expensive phone", description: ["The best phone ever made", "Latest technology", "Designed by apple"], 
				category_id: Category.second.id, user_id: @user.id )

puts "1 cellphone has been created"

Product.create!(name: "Television", price: 450.50, , summary: "A nice tv",description: ["52 inches", "LCD - 3D included", "1 month of warranty"],
				category_id: Category.third.id, user_id: @admin.id)

puts "1 television has been created"
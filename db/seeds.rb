@seller = Seller.create!(first_name: "seller", last_name: "user", email: "selleruser@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
puts "1 User has been created"

10.times do |category|
	Category.create(name: "#{category} category")
end
puts "10 Categories has been created"

Product.create(name: "Iphone 10", price: 255.40)
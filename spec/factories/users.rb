FactoryGirl.define do
	sequence :email do |n|
		"selleruser#{n}@test.com"
	end

	factory :user do
		first_name				"regular"
		last_name				"user"
		email					{generate :email}
		password				"asdfasdf"
		password_confirmation 	"asdfasdf"
		phone					"1234567890"
	end

	factory :admin_user, class: "AdminUser" do
		first_name				"admin"
		last_name				"user"
		email					{generate :email}
		password 				"asdfasdf"
		password_confirmation	"asdfasdf"
		phone					"1234567890"
	end

	factory :seller, class: "Seller" do
		first_name 				"seller"
		last_name				"user"
		email					{generate :email}
		password 				"asdfasdf"
		password_confirmation	"asdfasdf"
		phone					"1234567890"
	end
end
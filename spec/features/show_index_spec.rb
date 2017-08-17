require 'rails_helper'

Rspec.feature "Show index" do
  before do
    @user = Seller.create!(first_name: "seller", last_name: "user", email: "selleruser@test.com", 
    password: "asdfasdf", password_confirmation: "asdfasdf")
    @category = Category.create(name: "Tech")
    @product = Product.create!(name:"Phones", price:5.00, description:["cheap"],
                               category_id: @category.id, user_id: @user.id)
    @product1 = Product.create!(name:"Mic", price:10.00, description:["good"],
                                category_id: @category.id, user_id: @user.id)
    @product2 = Product.create!(name:"Magazine", price:2.00, description:["very good"],
                                category_id: @category.id, user_id: @user.id)
    @product3 = Product.create!(name:"Book", price:10.00, description:["great"],
                                category_id: @category.id, user_id: @user.id)
    @product4 = Product.create!(name:"Cel", price:25.00, description:["greater"],
                                category_id: @category.id, user_id: @user.id)
  end

  scenario "A user views the list of products available" do
    visit "/"

    click_link "Check products"

    
  end
end
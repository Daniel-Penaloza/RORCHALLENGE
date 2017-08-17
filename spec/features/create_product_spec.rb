require 'rails_helper'

RSpec.feature "Create Product" do
  before do
    @user = Seller.create!(first_name: "seller", last_name: "user", email: "selleruser@test.com", 
    password: "asdfasdf", password_confirmation: "asdfasdf")
    @category = Category.create(name: "Tech")
    @product1 = Product.create!(name:"Phones", price:5.00, description:["cheap"],
                                category_id: @category.id, user_id: @user.id)
  end
  scenario "A user creates a new product" do
    visit "/"

    click_link "Add a product"

    fill_in "Name", with: "Memory"
    fill_in "Price", with: "15,00"
    fill_in "Description", with: "Super memory"
    find("#product_category_id_#{@product1.id}")
    click_button "Create Product"
    expect(page).to have_content("Product has been added to the catalogue")
    expect(page.current_path).to eq(products_path)
  end

end
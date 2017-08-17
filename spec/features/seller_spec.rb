require 'rails_helper' 

describe "Sellers" do
	before do
		@regular = FactoryGirl.create(:user)
		@seller = FactoryGirl.create(:seller)
		login_as(@seller, :scope => :user)
	end

	describe "Index" do
		it 'can reach the index view' do
		visit root_path
		expect(page.status_code).to eq(200)

		click_on("Sellers")
		expect(current_path).to eq(users_path)
		end

		it 'has a list of sellers' do
			visit(users_path)
			expect(page.status_code).to eq(200)

			expect(page).to have_content(@regular.full_name)
			expect(page).to have_content(@seller.full_name)
		end
	end

	describe "Show" do
		it 'can reach the show view' do
			visit root_path
			click_on("number_#{@seller.id}_user")
			expect(current_path).to eq(user_path(@seller))
			expect(page.status_code).to eq(200)

			expect(page).to have_content(@seller.full_name)
			expect(page).to have_content(@seller.phone)
			expect(page).to have_content(@seller.categories.count)
			expect(page).to have_content(@seller.products.count)
		end
	end

	describe "Edit" do
		it "can reach the ediv view" do
			visit user_path(@seller)
			expect(page).to have_content("Edit User")
			click_on("Edit User")

			expect(current_path).to eq(edit_user_path(@seller))
		end

		it 'can edit the user' do
			visit edit_user_path(@seller)
			expect(page.status_code).to eq(200)

			fill_in 'seller[first_name]', with: "newseller"
			fill_in 'seller[last_name]', with: 'user'
			fill_in 'seller[email]', with: "newselleruser@test.com"
			click_on("Update User")

			expect(@seller.reload.full_name).to eq("Newseller User")
			expect(@seller.reload.email).to eq("newseller@test.com")
		end

		it 'cannot be edited by guest users or another user' do
			logout(:user)

			visit user_path(@seller)
			expect(page).to_not have_content("Edit User")
		end
	end
end
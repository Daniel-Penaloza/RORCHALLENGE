require 'rails_helper'

describe "Homepage" do 
	it 'can be reached successfully' do
		visit root_path
		expect(page.status_code).to eq(200)

		expect(page).to have_content("Brand Name")
		expect(page).to have_content(/Sellers|Producs|Categories|Login/)
	end
end
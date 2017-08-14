class Category < ApplicationRecord
	has_many :articles
	has_many :users, :through  => :articles
end

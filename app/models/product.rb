class Product < ApplicationRecord
	belongs_to :user
	belongs_to :category

	serialize :description, Array
end

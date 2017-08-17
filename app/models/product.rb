class Product < ApplicationRecord
	belongs_to :user
	belongs_to :category

	accepts_nested_attributes_for :category_id, allow_destroy: true

	serialize :description, Array
	serialize :category_id, Array
end

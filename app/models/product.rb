class Product < ApplicationRecord
	belongs_to :user
	belongs_to :category

	serialize :description, Array
	default_scope -> { order(updated_at: :desc) }	
end

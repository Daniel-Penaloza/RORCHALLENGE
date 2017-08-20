class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :products
	has_many :categories, :through  => :products

	def full_name
    "#{first_name} #{last_name}" 
	end

	mount_uploader :image, UserImageUploader
end

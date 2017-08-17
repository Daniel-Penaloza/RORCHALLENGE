class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :create, :update]

	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	private
		def set_user
			@user = User.find(params[:id])
		end
end
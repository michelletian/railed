class UsersController < ApplicationController
	has_many :reviews

	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
end

class UsersController < InheritedResources::Base

	respond_to :html, :xml, :json

	def index
		@users = User.all
		render json: @users
	end


end

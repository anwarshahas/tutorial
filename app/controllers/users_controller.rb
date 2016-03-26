class UsersController < InheritedResources::Base

	respond_to :html, :xml, :json
	skip_before_filter  :verify_authenticity_token

	def index
		@users = User.all
		render json: {users: @users} , status: 200
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def user_params
	   params.require(:user).permit(:name, :email, :encrypted_password)
  	end


end

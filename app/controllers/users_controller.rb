class UsersController < ApplicationController

  def index
  end

	def show
		@user = current_user
	end

	def new
		@user = User.new
	end

	def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Error!"
      render :new
    end
	end

	private
  def user_params
    params.require(:user).permit(:full_name, :email, :picture_link, :phone_number, :password, :password_confirmation)
  end	

end
class UsersController < ApplicationController

  def index
    @user = User.new
  end

	def show
    if User.exists?(params[:id])
		  @user = User.find(params[:id])
      render "show"
    else
      redirect_to root_path
    end
	end

	def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Error!"
      @errors = @user.errors.full_messages
      render "index"
    end
	end

	private
  def user_params
    params.require(:user).permit(:full_name, :email, :picture_link, :phone_number, :password, :password_confirmation)
  end	

end
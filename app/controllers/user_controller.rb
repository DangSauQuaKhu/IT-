class UserController < ApplicationController
  def index
      @users = User.all
  end
  def show
     @users = User.find(params[:id])
  end
  def user_params
      params.require(:user).permit(:email, :password, :name,:avatar,:password_confirmation, :age)
    end
  
end


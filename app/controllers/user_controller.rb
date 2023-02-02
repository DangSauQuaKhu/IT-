class UserController < ApplicationController
  def index
      @users = User.all
  end
  def show
     @users = current_user
  end
  def user_params
      params.require(:user).permit(:email, :password, :name,:avatar,:password_confirmation, :age)
    end
  
end


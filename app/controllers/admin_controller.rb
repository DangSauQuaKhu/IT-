class AdminController < ApplicationController
  def show
     @admins = Admin.find(params[:format])
     @blogs =  Blog.where(["email like ?", "%#{@admins.email}%"]).paginate(:page => params[:page], :per_page =>4) 
  end
end

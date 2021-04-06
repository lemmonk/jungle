class UsersController < ApplicationController

  def new
  end

  def create
    exist = User.find_by_email(params[:email])
    user = User.new(user_params)
  if !exist && user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
  end
  end 

  private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end

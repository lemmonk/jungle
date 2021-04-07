class UsersController < ApplicationController

  def new
  end

  def exist
  end

  def create
   
    user = User.new(user_params)
    user.email = user.email.downcase if user.email.present?
  if user.save
    session[:user_id] = user.id
    
    redirect_to '/'
  else
  
     redirect_to '/registrationError'
  end
  end 

  private

def user_params
  params.require(:user).permit(:name_first,:name_last, :email, :password, :password_confirmation)
end

end

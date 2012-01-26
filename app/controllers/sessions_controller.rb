class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = login(params[:email], params[:password],params[:remember_me] )
    if user
      redirect_back_or_to root_url, :notice => "Welcome #{user.username}, You have been signed in!"
    else
      flash.now.alert = "Email or password was invalid."
      redirect_to :login
    end
  end
  
  def destroy
    logout
    redirect_back_or_to root_url, :notice => "You have been logged out !"
  end
end

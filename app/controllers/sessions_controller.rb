class SessionsController < ApplicationController
  def new
    @user = User.new
    session[:return_to] ||= request.referer
  end

  def create
    previous_page = session[:return_to]
    user = login(params[:email], params[:password],params[:remember_me] )
    if user
      if previous_page.nil?
        redirect_back_or_to root_url, :notice => "Welcome #{user.username}, You have been signed in!"
      else
        redirect_to previous_page, :notice => "Welcome #{user.username}, You have been signed in!"
      end
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

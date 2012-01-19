class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
  
  def reset_password
    @user = User.first(:email => params[:email])
    if @user
      @user.deliver_reset_password_instructions!
      redirect_to forgot_password, :notice => "A mail has been sent to #{params[:email]}"
    else
      redirect_to forgot_password, :alert => "No email #{params[:email]} found in our user database !!"
    end
  end
  
  def forgot_password
    render :forgot_password
  end 
end

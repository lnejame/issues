class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login(params[:username], params[:password], params[:remember_me])
    if user
      redirect_back_or_to issues_path, notice: "Logged in!"
    else
      flash.now.alert = "Username or password invalid"
    end
  end
  
  def destroy
    logout
    redirect_to root_path, notice: "Logged out!"
  end
end

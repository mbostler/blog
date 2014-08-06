class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.where( "UPPER(name)=?", params[:name].upcase ).first
    
    byebug
    if user && user.authenticate( params[:password] )
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Welcome #{user.name}, you are now logged in."
    else
      flash.now.alert = "Invalid login credentials. Please try again."
      render :new
    end
  end
  
  

  def destroy
    user_name = current_user.name
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out successfully. Come back soon, #{user_name}!"
  end

end

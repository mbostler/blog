class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    puts "params is: " + params.inspect
    debugger
    @user = User.new( user_params )
    puts "user_params is: " + user_params.inspect
    puts "@user is: " + @user.inspect
    if @user.save
      redirect_to root_url, notice: "Thanks for signing up, #{@user.name}"
    else
      render "new"
    end
  end
  
  private
  def user_params
    params.require( :user ).permit( :name, :email, :password, :password_confirmation)
  end
end

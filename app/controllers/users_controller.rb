class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    if @user.id !=  session[:user_id]
      redirect_to '/'
    end
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:happiness, :name, :password, :nausea, :tickets, :height)
  end
end

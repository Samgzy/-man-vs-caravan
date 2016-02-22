class UsersController < ApplicationController

  before_action :set_user

  def show
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:users).permit(:first_name, :last_name, :description, :gender, :street, :city, :zip_code, :email, :password)
  end
end

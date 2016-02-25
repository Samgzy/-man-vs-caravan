class CaravansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_caravan, only: [:show, :edit, :update]
  before_action :find_user, only: [:create, :new, :show_own, :index_own, :edit, :update, :destroy]
  before_action :user_caravan, only: [:show_own, :edit, :destroy]

  def index
    @caravans = Caravan.all

    @markers = Gmaps4rails.build_markers(@caravans) do |caravan, marker|
      marker.lat caravan.latitude
      marker.lng caravan.longitude
    end
  end

  def index_own
    @caravans = @user.caravans
  end

  def show
  end

  def show_own
  end

  def new
    @caravan = Caravan.new
  end

  def edit
  end

  def create
    @caravan = @user.caravans.build(caravan_params)
    @caravan.save
    if @caravan.save
      redirect_to user_own_caravan_path(@user, @caravan)
    else
      render :new
    end
  end

  def update
    if @caravan.update(caravan_params)
      redirect_to user_caravan_path(@user, @caravan)
    else
      render :edit
    end
  end

  def destroy
    @caravan.destroy
    redirect_to user_own_caravans_path(@user)
  end

  private

  def user_caravan
    @caravan = @user.caravans.find(params[:id])
  end

  def find_user
    @user = current_user
  end

  def set_caravan
    @caravan = Caravan.find(params[:id])
  end

  def caravan_params
    params.require(:caravan).permit(:title, :description, :capacity, :price, :street, :city, :country, :zip_code, :tv, :shower, :coffee_machine, :kitchen, :wifi, :photo ,:photo_cache)
  end

end

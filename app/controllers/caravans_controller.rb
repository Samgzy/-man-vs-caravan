class CaravansController < ApplicationController

    before_action :set_caravan, only: [:show, :edit, :update, :destroy]

  def index
    @caravans = Caravan.all
  end

  def show
  end

  def new
    @caravan = Caravan.new
  end

  def create
    @caravan = Caravan.new(caravan_params)
    @caravan.save
    if @caravan.save
      redirect_to caravan_path(@caravan)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @caravan.update(caravan_params)
    if @caravan.update(caravan_params)
      redirect_to @caravan
    else
      render :edit
    end
  end

  def destroy
    @caravan.destroy
  end

  private

  def set_caravan
    @caravan = Caravan.find(params[:id])
  end

  def caravan_params
    params.require(:caravan).permit(:title, :description, :capacity, :price, :street, :city, :country, :zip_code, :tv, :shower, :coffee_machine, :kitchen, :wifi)
  end

end

class RentalsController < ApplicationController
  before_action :find_caravan, only: [:new, :create]
  before_action :set_rental, only: [:show, :destroy, :update]

  def index
    @rentals = current_user.rentals.all
  end

  def show
  end

  def index_own
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = @caravan.rentals.new(rental_params)
    @rental.user = current_user
    @rental.save
    @nb_of_days = (@rental.end_date - @rental.start_date)
    @rental.price = (@rental.price * @nb_of_days)
    @rental.save
    if @rental.save
      redirect_to user_path(current_user) + "#bookings"
    else
      render :new
    end
  end

  def update
    @rental.validated = rental_params[:validated]
    @rental.save
    redirect_to user_path(current_user) + "#bookings"
  end


  def destroy
    @rental.destroy
    redirect_to user_path(current_user) + "#bookings"
  end

  private
  def set_rental
    @rental = Rental.find(params[:id])
  end

  def find_caravan
    @caravan = Caravan.find(params[:caravan_id])
  end

  def rental_params
    params.require(:rental).permit(:price, :start_date, :end_date, :validated, :caravan_id)
  end
end

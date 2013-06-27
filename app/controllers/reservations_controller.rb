class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservations_params)

    flash.now[:notice] = "Reservation created!"
    redirect_to @restaurant
  end

  def destroy
  end

  def edit
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservations_params
    params.require(:reservation).permit(:party_size, :date, :time)
  end
end
class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    # date = params[:reservation][:date]
    # time = params[:reservation][:time]
    

    # @reservation = Reservation.new()

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
    params.require(:reservation).permit(:party_size)
  end
end
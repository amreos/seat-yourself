class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    date = Date.parse(params[:reservation][:date])
    time = DateTime.parse(params[:reservation][:time])

    @reservation = Reservation.new(
      party_size: params[:reservation][:party_size],
      date: date,
      time: time,
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id
    )

    if @reservation.save
      current_user.update_attributes points: add_points(@reservation.party_size)
      UserMailer.reservation_confirmation(current_user).deliver
      flash[:notice] = "Reservation created!"
      redirect_to @restaurant
    else
      flash.now[:alert] = "I'm sorry, your reservation couldn't be processed."
      render 'new'
    end
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

  def add_points(party_size)
    current_user.points + (@reservation.party_size * 25)
  end
end
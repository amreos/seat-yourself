class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def index
    @reservations = Reservation.where(restaurant_id: @restaurant.id,
                                      datetime: (DateTime.now)..(DateTime.now + 7))
  end

  def new
    @reservation = Reservation.new
  end

  def create   
    @reservation = Reservation.new(
      party_size: params[:reservation][:party_size],
      datetime: parsed_datetime,
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id
    )

    if @reservation.save 
      current_user.add_points(@reservation.points)
      UserMailer.reservation_confirmation(current_user).deliver
      flash[:notice] = "Reservation created!"
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def destroy
  end

  def edit
  end

  private

      # returns a local datetime
      def parsed_datetime      
        DateTime.civil_from_format(
          :local,
          params[:reservation][:date].to_date.year,
          params[:reservation][:date].to_date.month,
          params[:reservation][:date].to_date.day,
          params[:reservation][:time].to_time.hour,
          00
          )
      end

      # sets the restaurant for which the reservation is being made
      def load_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
      end
end
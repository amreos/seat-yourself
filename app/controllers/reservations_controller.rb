class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def index
    @reservations = Reservation.where(restaurant_id: @restaurant.id,
                                      datetime: (DateTime.now)..(DateTime.now + 7))
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    date_string_array = params[:reservation].values[1..5] 
    date_integer_array = date_string_array.map { |d| d.to_i }
    
    reservation_date = DateTime.new(
      date_integer_array[0],
      date_integer_array[1],
      date_integer_array[2],
      date_integer_array[3],
      00,
    )
    
    @reservation = Reservation.new(
      party_size: params[:reservation][:party_size],
      datetime: reservation_date,
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id
    )

    if @reservation.invalid_time_slot? || @reservation.before_now?
      flash[:alert] = "Wrong timeslot"
      redirect_to new_restaurant_reservation_path      
      return
    end

    if restaurant_full?(@reservation.datetime)
      flash[:alert] = "I'm sorry, we're full at that time."
      redirect_to new_restaurant_reservation_path
      return
    end

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

  def restaurant_full?(requested_datetime)
    total_reservations(requested_datetime) + @reservation.party_size > 99
  end

  def total_reservations(requested_datetime)
    @reservations = Reservation.where(restaurant_id: @restaurant.id,
                                      datetime: requested_datetime)

    people_in_restaurant = 0
    @reservations.each { |reservation| people_in_restaurant += reservation.party_size }
    people_in_restaurant
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def add_points(party_size)
    current_user.points + (@reservation.party_size * 25)
  end
end
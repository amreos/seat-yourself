class UsersController < ApplicationController
  def index
  	load_restaurant
    @users = @restaurant.users.uniq
  end

  def show
  	@user = User.find(params[:id])
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end

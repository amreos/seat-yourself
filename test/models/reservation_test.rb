require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  
	def setup
		@reservation = FactoryGirl.build(:reservation)
		@restaurant = FactoryGirl.build(:restaurant)
	end

  test "formatted time looks right" do
  	new_time = @reservation.formatted_time
  	assert_equal "Tuesday, 07/02 at 04:00 PM", new_time
  end

  test "points get calculated correctly" do
  	assert_equal 50, @reservation.points
  end

  test "reservation fails when a restaurant isn't open" do
  	@reservation.update_attributes(datetime: "2015-07-01 08:00:00".to_datetime)
  	assert !@reservation.save
  end

  test "reservation fails when a time is in the past" do
  	@reservation.update_attributes(datetime: "2011-07-01 12:00:00".to_datetime)
  	assert !@reservation.save
  end

  test "reservation fails when a minutes do not = 0" do
  	@reservation.update_attributes(datetime: "2015-07-01 12:30:00".to_datetime)
  	assert !@reservation.save
  end

  test "reservation fails when restaurant is full" do
  	@restaurant.update_attributes(capacity: 10)
  	@reservation.update_attributes(party_size: 11)
  	assert !@reservation.save
  end
end

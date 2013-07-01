require 'test_helper'

class UserTest < ActiveSupport::TestCase


  test "points are added to user" do 
  	user = FactoryGirl.create(:user)
  	user.add_points(75)
    assert_equal 125, user.points
  end

  
end

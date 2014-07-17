require 'test_helper'

class CarriersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end

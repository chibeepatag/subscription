require 'test_helper'

class SubscribeControllerTest < ActionController::TestCase
  test "should get paypal" do
    get :paypal
    assert_response :success
  end

  test "should get requirements" do
    get :requirements
    assert_response :success
  end

end

require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  test "should get braintree" do
    get :braintree
    assert_response :success
  end

  test "should get recurly" do
    get :recurly
    assert_response :success
  end

  test "should get chargebee" do
    get :chargebee
    assert_response :success
  end

  test "should get chargify" do
    get :chargify
    assert_response :success
  end

  test "should get stripe" do
    get :stripe
    assert_response :success
  end

end

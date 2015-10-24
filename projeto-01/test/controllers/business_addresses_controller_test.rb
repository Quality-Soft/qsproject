require 'test_helper'

class BusinessAddressesControllerTest < ActionController::TestCase
  setup do
    @business_address = business_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_address" do
    assert_difference('BusinessAddress.count') do
      post :create, business_address: {  }
    end

    assert_redirected_to business_address_path(assigns(:business_address))
  end

  test "should show business_address" do
    get :show, id: @business_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_address
    assert_response :success
  end

  test "should update business_address" do
    patch :update, id: @business_address, business_address: {  }
    assert_redirected_to business_address_path(assigns(:business_address))
  end

  test "should destroy business_address" do
    assert_difference('BusinessAddress.count', -1) do
      delete :destroy, id: @business_address
    end

    assert_redirected_to business_addresses_path
  end
end

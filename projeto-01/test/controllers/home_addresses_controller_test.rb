require 'test_helper'

class HomeAddressesControllerTest < ActionController::TestCase
  setup do
    @home_address = home_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_address" do
    assert_difference('HomeAddress.count') do
      post :create, home_address: {  }
    end

    assert_redirected_to home_address_path(assigns(:home_address))
  end

  test "should show home_address" do
    get :show, id: @home_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_address
    assert_response :success
  end

  test "should update home_address" do
    patch :update, id: @home_address, home_address: {  }
    assert_redirected_to home_address_path(assigns(:home_address))
  end

  test "should destroy home_address" do
    assert_difference('HomeAddress.count', -1) do
      delete :destroy, id: @home_address
    end

    assert_redirected_to home_addresses_path
  end
end

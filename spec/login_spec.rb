require 'rails_helper'
require 'spec_helper'

class RegistrationsControllerTest < ActionController::TestCase
  include Devise::TestHelpers # for including devise's actions

  def setup # this set up default settings for controller
    @controller = RegistrationsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @user = Registrations.new(username: "John", email: "myemail@email.com")
  end

  setup do # this used for setting global variable used in test file 
    @user= users(:one) # users is the fixture file of test in which you can set default data for test environment.
  end

  test "should create user" do # then you test cases for controller
    sign_in users(:one)
    post :create, users:{email:'test@test.com', password:'XXXX'}
    #you can pass arguments for create method. Please check it once, i am not sure about namesassert_response :success 
  end


end
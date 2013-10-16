require 'test_helper'

class Admin::WorksControllerTest < ActionController::TestCase
  test "should get index" do
    sign_in admin_users(:one)
    get :index
    assert_response :success
  end
end
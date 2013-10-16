require 'test_helper'

class AdminUserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :admin_users
  
  test "login and browse works" do
    # go to login page
    get "/admin/login"
    assert_response :success
    # login KO
    post_via_redirect "/admin/login", 'admin_user[email]' => 'ian.mcdonald@gmail.com', 'admin_user[password]' => 'wrong-password'
    assert_equal '/admin/login', path
    # login OK
    post_via_redirect "/admin/login", 'admin_user[email]' => 'ian.mcdonald@gmail.com', 'admin_user[password]' => 'password'
    assert_equal '/admin', path
    assert_equal 'Signed in successfully.', flash[:notice]
    # go to works index
    get "/admin/works"
    assert_response :success
    assert assigns(:works)
  end
end

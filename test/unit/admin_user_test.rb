require 'test_helper'

class AdminUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "must have an email" do
    au = AdminUser.new
    assert !au.save, "AdminUser was saved without an email"
  end
end

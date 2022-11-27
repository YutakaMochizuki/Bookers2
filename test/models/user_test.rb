require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "name should not be too long" do
    @user.name = "a" * 21
    assert_not @user.valid?
  end

  test "name should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    asseert_not @user.valid?
  end
end

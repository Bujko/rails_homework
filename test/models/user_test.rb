require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "encrypt_password" do
    assert_equal users(:user), encrypted_password, Digest::SHA1.hexdigest(users(:user).salt + "peanut")
  end

  test "cannot_save_without_email_address" do
    u = User.new
    assert !u.save, "Problem with saving the email address"
  end
end

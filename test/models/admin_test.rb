require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'admin with a valid email should be valid' do
    admin = Admin.new(email: 'test@gmail.com', password_digest: 'test')
    assert admin.valid?
  end

  test 'Admin with invalid email should be invalid' do
    admin = Admin.new(email: 'test', password_digest: 'test')
    assert_not admin.valid?
  end

  test 'admin with taken email should be invalid' do
    other_admin = admins(:one)
    admin = Admin.new(email: other_admin.email, password_digest: 'test')
    assert_not admin.valid?
  end
  
end

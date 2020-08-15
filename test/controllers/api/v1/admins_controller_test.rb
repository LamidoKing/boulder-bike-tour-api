require 'test_helper'

class Api::V1::AdminsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @admin = admins(:one)
  end

  test "should show admin" do
   get api_v1_admin_url(@admin), as: :json
   assert_response :success
   # Test to ensure response contains the correct email
   json_response = JSON.parse(self.response.body)
   assert_equal @admin.email, json_response['email']
 end

  test "should create admin" do
    assert_difference('Admin.count') do
      post api_v1_admins_url, params: { admin: { email: 'test@test.org', password: '123456' } }, as: :json
    end
    assert_response :created
  end

  test "should not create admin with taken email" do
    assert_no_difference('Admin.count') do
      post api_v1_admins_url, params: { admin: { email: @admin.email, password: '123456' } }, as: :json
    end
    assert_response :unprocessable_entity
  end

end

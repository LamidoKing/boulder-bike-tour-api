require 'test_helper'

class Api::V1::AdminsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @admin = admins(:one)
  end

  test "should show admin" do
   get api_v1_admin_url(@admin),
   headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id) },
   as: :json
   # Test to ensure response contains the correct email
   json_response = JSON.parse(self.response.body)
   assert_equal @admin.email, json_response['email']
 end

 test "should forbid show admin" do
  get api_v1_admin_url(@admin), as: :json
  assert_response :unauthorized
end

  test "should create admin" do
    assert_difference('Admin.count') do
      post api_v1_admins_url, params: { admin: { email: 'test@test.org', password: '123456' } }, 
      headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id) }, as: :json
    end
    assert_response :created
  end

  test "should forbid create admin" do
    assert_no_difference('Admin.count') do
      post api_v1_admins_url, params: { admin: { email: 'test@test.org', password: '123456' } }, as: :json
    end
    assert_response :unauthorized
  end

  test "should not create admin with taken email" do
    assert_no_difference('Admin.count') do
      post api_v1_admins_url, params: { admin: { email: @admin.email, password: '123456' } }, 
      headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id) }, as: :json
    end
    assert_response :unprocessable_entity
  end

  test 'should get JWT token' do
   post api_v1_admins_login_url, params: { admin: { email: @admin.email, password: 'g00d_pa$$' } }, as: :json
   assert_response :success

   json_response = JSON.parse(response.body)
   assert_not_nil json_response['token']
 end

 test 'should not get JWT token' do
   post api_v1_admins_login_url, params: { admin: { email: @admin.email, password: 'b@d_pa$$' } }, as: :json
   assert_response :unauthorized
 end

end

require 'test_helper'

class Api::V1::RidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rider = riders(:one)
  end

  test "should show riders" do
    get api_v1_riders_url(), as: :json
    assert_response :success
  end

  test "should create rider" do
    assert_difference('Rider.count') do
      post api_v1_riders_url, 
      params: { rider: { first_name: @rider.first_name, last_name: @rider.last_name, city_of_origin: @rider.city_of_origin, 
      state_of_origin: @rider.state_of_origin, latitude: @rider.latitude, longitude: @rider.longitude } },
      headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @rider.admin_id) }, as: :json
    end

    assert_response :created
  end

  test "should forbid unauthorized to create rider" do
    assert_no_difference('Rider.count') do
      post api_v1_riders_url, 
      params: { rider: { first_name: @rider.first_name, last_name: @rider.last_name, city_of_origin: @rider.city_of_origin, 
      state_of_origin: @rider.state_of_origin, latitude: @rider.latitude, longitude: @rider.longitude } },
       as: :json
    end

    assert_response :unauthorized
  end


  test "should show rider" do
    get api_v1_rider_url(@rider), as: :json
    assert_response :success

    json_response = JSON.parse(self.response.body)
    assert_equal @rider.first_name, json_response['first_name']
  end

  test "should update rider" do
    patch api_v1_rider_url(@rider), params: { rider: {  } },
    headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @rider.admin_id) }, as: :json
    assert_response 200
  end

  test "should forbid update rider" do
    patch api_v1_rider_url(@rider), params: { rider: {  } }, as: :json
    assert_response :unauthorized
  end

  test "should destroy rider" do
    assert_difference('Rider.count', -1) do
      delete api_v1_rider_url(@rider), 
      headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @rider.admin_id) }, as: :json
    end

    assert_response 204
  end
  
  test "should forbid destroy rider" do
    assert_no_difference('Rider.count') do
      delete api_v1_rider_url(@rider), as: :json
    end

    assert_response :unauthorized
  end
end

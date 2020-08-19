require 'test_helper'

class Api::V1::SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
    @admin = admins(:one)
  end

  test "should get index" do
    get api_v1_submissions_url,
    headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id ) }, as: :json
    assert_response :success
  end

  test "should forbid get index" do
    get api_v1_submissions_url, as: :json
    assert_response :unauthorized
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post api_v1_submissions_url, 
      params: { submission: { first_name: @submission.first_name, last_name: @submission.last_name, 
       email: 'test@test.org', slogan: @submission.slogan } }, as: :json
    end

    assert_response 201
  end

  test "should show submission" do
    get api_v1_submission_url(@submission),
    headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id ) }, as: :json
    assert_response :success
  end

  test "should forbid show submission" do
    get api_v1_submission_url(@submission)
    assert_response :unauthorized
  end

  test "should update submission" do
    patch api_v1_submission_url(@submission), params: { submission: {  } }, 
    headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id ) }, as: :json
    assert_response 200
  end

  test "should forbid update submission" do
    patch api_v1_submission_url(@submission), params: { submission: {  } }, as: :json
    assert_response :unauthorized
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete api_v1_submission_url(@submission), 
      headers: { Authorization: "Bearer " + JsonWebToken.encode(adminId: @admin.id ) }, as: :json
    end

    assert_response 204
  end

  test "should forbid destroy submission" do
    assert_no_difference('Submission.count') do
      delete api_v1_submission_url(@submission), as: :json
    end

    assert_response :unauthorized
  end
end

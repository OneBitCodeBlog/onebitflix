require 'test_helper'

class Api::V1::ExecutionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_executions_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_executions_update_url
    assert_response :success
  end

end

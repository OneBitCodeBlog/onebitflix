require 'test_helper'

class Api::V1::RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_recommendations_index_url
    assert_response :success
  end

end

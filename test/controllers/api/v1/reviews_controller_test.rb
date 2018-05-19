require 'test_helper'

class Api::V1::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_reviews_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_reviews_create_url
    assert_response :success
  end

end

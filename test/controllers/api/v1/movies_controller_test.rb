require 'test_helper'

class Api::V1::MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_movies_show_url
    assert_response :success
  end

end

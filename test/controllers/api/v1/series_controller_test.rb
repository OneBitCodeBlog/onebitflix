require 'test_helper'

class Api::V1::SeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_series_show_url
    assert_response :success
  end

end

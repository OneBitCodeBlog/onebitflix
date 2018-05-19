require 'test_helper'

class Api::V1::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_searches_index_url
    assert_response :success
  end

end

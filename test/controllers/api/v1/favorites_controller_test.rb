require 'test_helper'

class Api::V1::FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_favorites_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_favorites_create_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_favorites_destroy_url
    assert_response :success
  end

end

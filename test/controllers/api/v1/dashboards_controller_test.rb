require 'test_helper'

class Api::V1::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_dashboards_index_url
    assert_response :success
  end

end

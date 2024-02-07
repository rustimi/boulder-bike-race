require "test_helper"

class RidersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get riders_url
    assert_response :success
  end

  test "should get show" do
    get rider_path(Rider.first)
    assert_response :success
  end
end

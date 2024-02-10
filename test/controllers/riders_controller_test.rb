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

  test "should only GET riders" do
    post riders_url
    assert_response :missing

    put riders_url
    assert_response :missing

    delete riders_url
    assert_response :missing
  end
end

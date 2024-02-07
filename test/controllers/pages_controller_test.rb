require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get photos" do
    get photos_url
    assert_response :success
  end

  test "should get locations" do
    get locations_url
    assert_response :success
  end

  test "should get thankyou" do
    get thankyou_url
    assert_response :success
  end
end

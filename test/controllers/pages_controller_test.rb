require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should only get home" do
    get root_url
    assert_response :success

    post root_url
    assert_response :missing

    post root_url
    assert_response :missing

    put root_url
    assert_response :missing

    delete root_url
    assert_response :missing
  end

  test "should only get photos" do
    get photos_url
    assert_response :success

    post photos_url
    assert_response :missing

    post photos_url
    assert_response :missing

    put photos_url
    assert_response :missing

    delete photos_url
    assert_response :missing
  end

  test "should only get locations" do
    get locations_url
    assert_response :success

    post locations_url
    assert_response :missing

    put locations_url
    assert_response :missing

    delete locations_url
    assert_response :missing
  end

  test "should only get thankyou" do
    get thankyou_url
    assert_response :success

    post thankyou_url
    assert_response :missing

    put thankyou_url
    assert_response :missing

    delete thankyou_url
    assert_response :missing
  end
end

require "test_helper"

class ContestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_1 = contests(:user_one)
  end

  test "should get new" do
    get new_contest_url
    assert_response :success
  end

  test "should create entry" do
    params = {
      contest: {
        fname: "Mario",
        lname: "Test",
        email: "mario@test.com",
        slogan: "Test slogan"
      }
    }
    post contests_url, params: params
    assert_redirected_to thankyou_url
  end


  test "should not create entry" do
    params = {
      contest: {
        fname: "Mario",
        lname: "Test",
        email: "mario@test.com",
      }
    }

    # missing slogan
    post contests_url, params: params
    assert_response 422

    # wrong email format
    params[:slogan] = "test"
    params[:email] = "WrongFormat"
    post contests_url, params: params
    assert_response 422
  end
end

require "test_helper"

class ContestTest < ActiveSupport::TestCase
  test "basic creation" do
    contest = Contest.new

    contest.fname = "User"
    contest.lname = "Test"
    assert_not contest.save, "Not all fields are filled"

    contest.email = "test"
    assert_not contest.save, "email not formatted correctly"

    contest.email="test@example.com"
    assert_not contest.save, "Sill missing fields"

    contest.slogan = "MORE_THAN_50_CHARS_MORE_THAN_50_CHARS_MORE_THAN_50_CHARS"
    assert_not contest.save, "More than 50 chars"

    contest.slogan = "Less_Than_50_Chars"
    assert contest.save, "Expected to be saved!"
  end

  test "duplicate email" do
    user_1 = contests(:user_one)
    assert user_1.valid?, "Fixture not exising"
    assert user_1.email == "email_1@example.com", "Wrong email in fixture"

    user_2 = contests(:user_two)
    assert user_2.valid?, "Fixture not exising"
    assert user_2.email == "email_2@example.com", "Wrong email in fixture"

    user_2.email = user_1.email
    assert_not user_2.save, "Duplicate email"


  end
end

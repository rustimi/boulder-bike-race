require "test_helper"

class RiderTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "basic creation" do
    rider = Rider.new({
                        fname: "FirstName",
                        lname: "LastName",
                        city_origin: "CityName",
                        state_origin: "IT",
                        latitude: 123,
                        longitude: 321
                      })
    rider.save
    assert true
  end
end

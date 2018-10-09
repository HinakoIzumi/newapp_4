require 'test_helper'

class CordinatesControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get cordinates_name_url
    assert_response :success
  end

end

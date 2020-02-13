require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get id" do
    get user_id_url
    assert_response :success
  end

end

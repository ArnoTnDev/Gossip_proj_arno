require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get id" do
    get gossip_id_url
    assert_response :success
  end

end

require "test_helper"

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get gossip_home_url
    assert_response :success
  end

  test "should get team" do
    get gossip_team_url
    assert_response :success
  end

  test "should get contact" do
    get gossip_contact_url
    assert_response :success
  end

  test "should get welcome" do
    get gossip_welcome_url
    assert_response :success
  end
end

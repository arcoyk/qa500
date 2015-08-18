require 'test_helper'

class VoteControllerTest < ActionController::TestCase
  test "should get like" do
    get :like
    assert_response :success
  end

end

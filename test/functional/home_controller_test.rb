require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get story" do
    get :story
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end

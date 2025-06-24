require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new (login)" do
    get login_url
    assert_response :success
  end
end
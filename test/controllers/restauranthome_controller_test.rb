require "test_helper"

class RestauranthomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restauranthome_index_url
    assert_response :success
  end
end

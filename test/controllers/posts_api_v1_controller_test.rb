require 'test_helper'

class PostsApiV1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_api_v1_index_url
    assert_response :success
  end

  test "should get show" do
    get posts_api_v1_show_url
    assert_response :success
  end

end

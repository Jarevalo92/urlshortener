require 'test_helper'

class UrlControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get url_create_url
    assert_response :success
  end

  test "should get show" do
    get url_show_url
    assert_response :success
  end

  test "should get update" do
    get url_update_url
    assert_response :success
  end

  test "should get destroy" do
    get url_destroy_url
    assert_response :success
  end

end

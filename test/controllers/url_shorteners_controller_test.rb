require 'test_helper'

class UrlShortenersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get url_shorteners_show_url
    assert_response :success
  end

  test "should get index" do
    get url_shorteners_index_url
    assert_response :success
  end

  test "should get new" do
    get url_shorteners_new_url
    assert_response :success
  end

  test "should get create" do
    get url_shorteners_create_url
    assert_response :success
  end

end

require 'test_helper'

class PoilusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get poilus_index_url
    assert_response :success
  end

  test "should get new" do
    get poilus_new_url
    assert_response :success
  end

  test "should get create" do
    get poilus_create_url
    assert_response :success
  end

  test "should get show" do
    get poilus_show_url
    assert_response :success
  end

  test "should get edit" do
    get poilus_edit_url
    assert_response :success
  end

  test "should get update" do
    get poilus_update_url
    assert_response :success
  end

  test "should get destroy" do
    get poilus_destroy_url
    assert_response :success
  end

end

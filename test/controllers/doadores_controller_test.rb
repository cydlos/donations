require "test_helper"

class DoadoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doadores_index_url
    assert_response :success
  end

  test "should get new" do
    get doadores_new_url
    assert_response :success
  end

  test "should get create" do
    get doadores_create_url
    assert_response :success
  end

  test "should get edit" do
    get doadores_edit_url
    assert_response :success
  end

  test "should get update" do
    get doadores_update_url
    assert_response :success
  end

  test "should get destroy" do
    get doadores_destroy_url
    assert_response :success
  end
end

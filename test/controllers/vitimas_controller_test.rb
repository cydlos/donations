require "test_helper"

class VitimasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vitimas_index_url
    assert_response :success
  end

  test "should get new" do
    get vitimas_new_url
    assert_response :success
  end

  test "should get create" do
    get vitimas_create_url
    assert_response :success
  end

  test "should get edit" do
    get vitimas_edit_url
    assert_response :success
  end

  test "should get update" do
    get vitimas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get vitimas_destroy_url
    assert_response :success
  end
end

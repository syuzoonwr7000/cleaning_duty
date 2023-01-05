require "test_helper"

class TodayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get today_index_url
    assert_response :success
  end

  test "should get edit" do
    get today_edit_url
    assert_response :success
  end

  test "should get new" do
    get today_new_url
    assert_response :success
  end
end

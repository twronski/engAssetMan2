require 'test_helper'

class EqptFunctionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eqpt_function_index_url
    assert_response :success
  end

  test "should get show" do
    get eqpt_function_show_url
    assert_response :success
  end

  test "should get new" do
    get eqpt_function_new_url
    assert_response :success
  end

  test "should get create" do
    get eqpt_function_create_url
    assert_response :success
  end

  test "should get edit" do
    get eqpt_function_edit_url
    assert_response :success
  end

  test "should get update" do
    get eqpt_function_update_url
    assert_response :success
  end

  test "should get delete" do
    get eqpt_function_delete_url
    assert_response :success
  end

end

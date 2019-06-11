require 'test_helper'

class EqptTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eqpt_type_index_url
    assert_response :success
  end

  test "should get show" do
    get eqpt_type_show_url
    assert_response :success
  end

  test "should get new" do
    get eqpt_type_new_url
    assert_response :success
  end

  test "should get create" do
    get eqpt_type_create_url
    assert_response :success
  end

  test "should get edit" do
    get eqpt_type_edit_url
    assert_response :success
  end

  test "should get update" do
    get eqpt_type_update_url
    assert_response :success
  end

  test "should get delete" do
    get eqpt_type_delete_url
    assert_response :success
  end

end

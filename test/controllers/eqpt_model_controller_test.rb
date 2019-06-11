require 'test_helper'

class EqptModelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eqpt_model_index_url
    assert_response :success
  end

  test "should get show" do
    get eqpt_model_show_url
    assert_response :success
  end

  test "should get new" do
    get eqpt_model_new_url
    assert_response :success
  end

  test "should get create" do
    get eqpt_model_create_url
    assert_response :success
  end

  test "should get edit" do
    get eqpt_model_edit_url
    assert_response :success
  end

  test "should get update" do
    get eqpt_model_update_url
    assert_response :success
  end

  test "should get delete" do
    get eqpt_model_delete_url
    assert_response :success
  end

end

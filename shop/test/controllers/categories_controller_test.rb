require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categories_index_url
    assert_response :success
  end

  test "should get new" do
    get categories_new_url
    assert_response :success
  end

  test "should get create" do
    get categories_create_url
    assert_response :success
  end

  test "should get destroy" do
    get categories_destroy_url
    assert_response :success
  end

  test "should get category_params" do
    get categories_category_params_url
    assert_response :success
  end

end

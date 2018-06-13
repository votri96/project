require 'test_helper'

class Category2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category2 = category2s(:one)
  end

  test "should get index" do
    get category2s_url
    assert_response :success
  end

  test "should get new" do
    get new_category2_url
    assert_response :success
  end

  test "should create category2" do
    assert_difference('Category2.count') do
      post category2s_url, params: { category2: { category1_id: @category2.category1_id, name: @category2.name } }
    end

    assert_redirected_to category2_url(Category2.last)
  end

  test "should show category2" do
    get category2_url(@category2)
    assert_response :success
  end

  test "should get edit" do
    get edit_category2_url(@category2)
    assert_response :success
  end

  test "should update category2" do
    patch category2_url(@category2), params: { category2: { category1_id: @category2.category1_id, name: @category2.name } }
    assert_redirected_to category2_url(@category2)
  end

  test "should destroy category2" do
    assert_difference('Category2.count', -1) do
      delete category2_url(@category2)
    end

    assert_redirected_to category2s_url
  end
end

require 'test_helper'

class TinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tin = tins(:one)
  end

  test "should get index" do
    get tins_url
    assert_response :success
  end

  test "should get new" do
    get new_tin_url
    assert_response :success
  end

  test "should create tin" do
    assert_difference('Tin.count') do
      post tins_url, params: { tin: { category1_id: @tin.category1_id, category2_id: @tin.category2_id, content: @tin.content, create_by: @tin.create_by, image: @tin.image, name: @tin.name, showonhome: @tin.showonhome, update_by: @tin.update_by, viewcount: @tin.viewcount } }
    end

    assert_redirected_to tin_url(Tin.last)
  end

  test "should show tin" do
    get tin_url(@tin)
    assert_response :success
  end

  test "should get edit" do
    get edit_tin_url(@tin)
    assert_response :success
  end

  test "should update tin" do
    patch tin_url(@tin), params: { tin: { category1_id: @tin.category1_id, category2_id: @tin.category2_id, content: @tin.content, create_by: @tin.create_by, image: @tin.image, name: @tin.name, showonhome: @tin.showonhome, update_by: @tin.update_by, viewcount: @tin.viewcount } }
    assert_redirected_to tin_url(@tin)
  end

  test "should destroy tin" do
    assert_difference('Tin.count', -1) do
      delete tin_url(@tin)
    end

    assert_redirected_to tins_url
  end
end

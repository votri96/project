require 'test_helper'

class TagdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tagdetail = tagdetails(:one)
  end

  test "should get index" do
    get tagdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_tagdetail_url
    assert_response :success
  end

  test "should create tagdetail" do
    assert_difference('Tagdetail.count') do
      post tagdetails_url, params: { tagdetail: { tag_id: @tagdetail.tag_id, tin_id: @tagdetail.tin_id } }
    end

    assert_redirected_to tagdetail_url(Tagdetail.last)
  end

  test "should show tagdetail" do
    get tagdetail_url(@tagdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_tagdetail_url(@tagdetail)
    assert_response :success
  end

  test "should update tagdetail" do
    patch tagdetail_url(@tagdetail), params: { tagdetail: { tag_id: @tagdetail.tag_id, tin_id: @tagdetail.tin_id } }
    assert_redirected_to tagdetail_url(@tagdetail)
  end

  test "should destroy tagdetail" do
    assert_difference('Tagdetail.count', -1) do
      delete tagdetail_url(@tagdetail)
    end

    assert_redirected_to tagdetails_url
  end
end

require 'test_helper'

class Admin::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get email:string" do
    get admin_user_email:string_url
    assert_response :success
  end

  test "should get password:string" do
    get admin_user_password:string_url
    assert_response :success
  end

  test "should get password_confirmation:string" do
    get admin_user_password_confirmation:string_url
    assert_response :success
  end

  test "should get username:string" do
    get admin_user_username:string_url
    assert_response :success
  end

  test "should get address:string" do
    get admin_user_address:string_url
    assert_response :success
  end

  test "should get role:references" do
    get admin_user_role:references_url
    assert_response :success
  end

end

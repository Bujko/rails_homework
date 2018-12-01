require 'test_helper'

class TrousersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trouser = trousers(:one)
  end

  test "should get index" do
    get trousers_url
    assert_response :success
  end

  test "should get new" do
    get new_trouser_url
    assert_response :success
  end

  test "should create trouser" do
    assert_difference('Trouser.count') do
      post trousers_url, params: { trouser: { picture: @trouser.picture, user_id: @trouser.user_id } }
    end

    assert_redirected_to trouser_url(Trouser.last)
  end

  test "should show trouser" do
    get trouser_url(@trouser)
    assert_response :success
  end

  test "should get edit" do
    get edit_trouser_url(@trouser)
    assert_response :success
  end

  test "should update trouser" do
    patch trouser_url(@trouser), params: { trouser: { picture: @trouser.picture, user_id: @trouser.user_id } }
    assert_redirected_to trouser_url(@trouser)
  end

  test "should destroy trouser" do
    assert_difference('Trouser.count', -1) do
      delete trouser_url(@trouser)
    end

    assert_redirected_to trousers_url
  end
end

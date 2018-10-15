require 'test_helper'

class OutfitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outfit = outfits(:one)
  end

  test "should get index" do
    get outfits_url
    assert_response :success
  end

  test "should get new" do
    get new_outfit_url
    assert_response :success
  end

  test "should create outfit" do
    assert_difference('Outfit.count') do
      post outfits_url, params: { outfit: { checked: @outfit.checked, shirt_id: @outfit.shirt_id, shoes_id: @outfit.shoes_id, stylist_id: @outfit.stylist_id, trousers_id: @outfit.trousers_id, user_id: @outfit.user_id } }
    end

    assert_redirected_to outfit_url(Outfit.last)
  end

  test "should show outfit" do
    get outfit_url(@outfit)
    assert_response :success
  end

  test "should get edit" do
    get edit_outfit_url(@outfit)
    assert_response :success
  end

  test "should update outfit" do
    patch outfit_url(@outfit), params: { outfit: { checked: @outfit.checked, shirt_id: @outfit.shirt_id, shoes_id: @outfit.shoes_id, stylist_id: @outfit.stylist_id, trousers_id: @outfit.trousers_id, user_id: @outfit.user_id } }
    assert_redirected_to outfit_url(@outfit)
  end

  test "should destroy outfit" do
    assert_difference('Outfit.count', -1) do
      delete outfit_url(@outfit)
    end

    assert_redirected_to outfits_url
  end
end

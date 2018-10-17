require "application_system_test_case"

class OutfitsTest < ApplicationSystemTestCase
  setup do
    @outfit = outfits(:one)
  end

  test "visiting the index" do
    visit outfits_url
    assert_selector "h1", text: "Outfits"
  end

  test "creating a Outfit" do
    visit outfits_url
    click_on "New Outfit"

    fill_in "Comment", with: @outfit.comment
    fill_in "Integer Checked", with: @outfit.integer_checked
    fill_in "Name", with: @outfit.name
    fill_in "Season", with: @outfit.season
    fill_in "Shirt", with: @outfit.shirt_id
    fill_in "Shoes", with: @outfit.shoes_id
    fill_in "Stylist", with: @outfit.stylist_id
    fill_in "Trousers", with: @outfit.trousers_id
    fill_in "Type", with: @outfit.type
    fill_in "User", with: @outfit.user_id
    click_on "Create Outfit"

    assert_text "Outfit was successfully created"
    click_on "Back"
  end

  test "updating a Outfit" do
    visit outfits_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @outfit.comment
    fill_in "Integer Checked", with: @outfit.integer_checked
    fill_in "Name", with: @outfit.name
    fill_in "Season", with: @outfit.season
    fill_in "Shirt", with: @outfit.shirt_id
    fill_in "Shoes", with: @outfit.shoes_id
    fill_in "Stylist", with: @outfit.stylist_id
    fill_in "Trousers", with: @outfit.trousers_id
    fill_in "Type", with: @outfit.type
    fill_in "User", with: @outfit.user_id
    click_on "Update Outfit"

    assert_text "Outfit was successfully updated"
    click_on "Back"
  end

  test "destroying a Outfit" do
    visit outfits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outfit was successfully destroyed"
  end
end

require "application_system_test_case"

class TrousersTest < ApplicationSystemTestCase
  setup do
    @trouser = trousers(:one)
  end

  test "visiting the index" do
    visit trousers_url
    assert_selector "h1", text: "Trousers"
  end

  test "creating a Trouser" do
    visit trousers_url
    click_on "New Trouser"

    fill_in "Picture", with: @trouser.picture
    fill_in "User", with: @trouser.user_id
    click_on "Create Trouser"

    assert_text "Trouser was successfully created"
    click_on "Back"
  end

  test "updating a Trouser" do
    visit trousers_url
    click_on "Edit", match: :first

    fill_in "Picture", with: @trouser.picture
    fill_in "User", with: @trouser.user_id
    click_on "Update Trouser"

    assert_text "Trouser was successfully updated"
    click_on "Back"
  end

  test "destroying a Trouser" do
    visit trousers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trouser was successfully destroyed"
  end
end

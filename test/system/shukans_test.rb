require "application_system_test_case"

class ShukansTest < ApplicationSystemTestCase
  setup do
    @shukan = shukans(:one)
  end

  test "visiting the index" do
    visit shukans_url
    assert_selector "h1", text: "Shukans"
  end

  test "creating a Shukan" do
    visit shukans_url
    click_on "New Shukan"

    check "Done" if @shukan.done
    fill_in "Position", with: @shukan.position
    fill_in "Title", with: @shukan.title
    fill_in "User", with: @shukan.user_id
    click_on "Create Shukan"

    assert_text "Shukan was successfully created"
    click_on "Back"
  end

  test "updating a Shukan" do
    visit shukans_url
    click_on "Edit", match: :first

    check "Done" if @shukan.done
    fill_in "Position", with: @shukan.position
    fill_in "Title", with: @shukan.title
    fill_in "User", with: @shukan.user_id
    click_on "Update Shukan"

    assert_text "Shukan was successfully updated"
    click_on "Back"
  end

  test "destroying a Shukan" do
    visit shukans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shukan was successfully destroyed"
  end
end

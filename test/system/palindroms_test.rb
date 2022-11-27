require "application_system_test_case"

class PalindromsTest < ApplicationSystemTestCase
  setup do
    @palindrom = palindroms(:one)
  end

  test "visiting the index" do
    visit palindroms_url
    assert_selector "h1", text: "Palindroms"
  end

  test "should create palindrom" do
    visit palindroms_url
    click_on "New palindrom"

    fill_in "Total", with: @palindrom.total
    fill_in "Value", with: @palindrom.value
    click_on "Create Palindrom"

    assert_text "Palindrom was successfully created"
    click_on "Back"
  end

  test "should update Palindrom" do
    visit palindrom_url(@palindrom)
    click_on "Edit this palindrom", match: :first

    fill_in "Total", with: @palindrom.total
    fill_in "Value", with: @palindrom.value
    click_on "Update Palindrom"

    assert_text "Palindrom was successfully updated"
    click_on "Back"
  end

  test "should destroy Palindrom" do
    visit palindrom_url(@palindrom)
    click_on "Destroy this palindrom", match: :first

    assert_text "Palindrom was successfully destroyed"
  end
end

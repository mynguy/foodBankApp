require "application_system_test_case"

class FoodbanksTest < ApplicationSystemTestCase
  setup do
    @foodbank = foodbanks(:one)
  end

  test "visiting the index" do
    visit foodbanks_url
    assert_selector "h1", text: "Foodbanks"
  end

  test "should create foodbank" do
    visit foodbanks_url
    click_on "New foodbank"

    fill_in "Address", with: @foodbank.address
    fill_in "City", with: @foodbank.city
    fill_in "Email", with: @foodbank.email
    fill_in "Name", with: @foodbank.name
    fill_in "Phone", with: @foodbank.phone
    fill_in "State", with: @foodbank.state
    fill_in "Zipcode", with: @foodbank.zipcode
    click_on "Create Foodbank"

    assert_text "Foodbank was successfully created"
    click_on "Back"
  end

  test "should update Foodbank" do
    visit foodbank_url(@foodbank)
    click_on "Edit this foodbank", match: :first

    fill_in "Address", with: @foodbank.address
    fill_in "City", with: @foodbank.city
    fill_in "Email", with: @foodbank.email
    fill_in "Name", with: @foodbank.name
    fill_in "Phone", with: @foodbank.phone
    fill_in "State", with: @foodbank.state
    fill_in "Zipcode", with: @foodbank.zipcode
    click_on "Update Foodbank"

    assert_text "Foodbank was successfully updated"
    click_on "Back"
  end

  test "should destroy Foodbank" do
    visit foodbank_url(@foodbank)
    click_on "Destroy this foodbank", match: :first

    assert_text "Foodbank was successfully destroyed"
  end
end

require "application_system_test_case"

class CryptocoinsTest < ApplicationSystemTestCase
  setup do
    @cryptocoin = cryptocoins(:one)
  end

  test "visiting the index" do
    visit cryptocoins_url
    assert_selector "h1", text: "Cryptocoins"
  end

  test "creating a Cryptocoin" do
    visit cryptocoins_url
    click_on "New Cryptocoin"

    fill_in "Acronym", with: @cryptocoin.acronym
    fill_in "Description", with: @cryptocoin.description
    fill_in "Image url", with: @cryptocoin.image_url
    click_on "Create Cryptocoin"

    assert_text "Cryptocoin was successfully created"
    click_on "Back"
  end

  test "updating a Cryptocoin" do
    visit cryptocoins_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @cryptocoin.acronym
    fill_in "Description", with: @cryptocoin.description
    fill_in "Image url", with: @cryptocoin.image_url
    click_on "Update Cryptocoin"

    assert_text "Cryptocoin was successfully updated"
    click_on "Back"
  end

  test "destroying a Cryptocoin" do
    visit cryptocoins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cryptocoin was successfully destroyed"
  end
end

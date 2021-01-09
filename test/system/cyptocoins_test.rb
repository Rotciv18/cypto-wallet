require "application_system_test_case"

class CyptocoinsTest < ApplicationSystemTestCase
  setup do
    @cyptocoin = cyptocoins(:one)
  end

  test "visiting the index" do
    visit cyptocoins_url
    assert_selector "h1", text: "Cyptocoins"
  end

  test "creating a Cyptocoin" do
    visit cyptocoins_url
    click_on "New Cyptocoin"

    fill_in "Acronym", with: @cyptocoin.acronym
    fill_in "Description", with: @cyptocoin.description
    fill_in "Image url", with: @cyptocoin.image_url
    click_on "Create Cyptocoin"

    assert_text "Cyptocoin was successfully created"
    click_on "Back"
  end

  test "updating a Cyptocoin" do
    visit cyptocoins_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @cyptocoin.acronym
    fill_in "Description", with: @cyptocoin.description
    fill_in "Image url", with: @cyptocoin.image_url
    click_on "Update Cyptocoin"

    assert_text "Cyptocoin was successfully updated"
    click_on "Back"
  end

  test "destroying a Cyptocoin" do
    visit cyptocoins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cyptocoin was successfully destroyed"
  end
end

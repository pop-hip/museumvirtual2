require "application_system_test_case"

class ArtTypesTest < ApplicationSystemTestCase
  setup do
    @art_type = art_types(:one)
  end

  test "visiting the index" do
    visit art_types_url
    assert_selector "h1", text: "Art Types"
  end

  test "creating a Art type" do
    visit art_types_url
    click_on "New Art Type"

    fill_in "Author", with: @art_type.author
    fill_in "Date", with: @art_type.date
    fill_in "Dimention", with: @art_type.dimention
    fill_in "Interpreter", with: @art_type.interpreter
    fill_in "Title", with: @art_type.title
    click_on "Create Art type"

    assert_text "Art type was successfully created"
    click_on "Back"
  end

  test "updating a Art type" do
    visit art_types_url
    click_on "Edit", match: :first

    fill_in "Author", with: @art_type.author
    fill_in "Date", with: @art_type.date
    fill_in "Dimention", with: @art_type.dimention
    fill_in "Interpreter", with: @art_type.interpreter
    fill_in "Title", with: @art_type.title
    click_on "Update Art type"

    assert_text "Art type was successfully updated"
    click_on "Back"
  end

  test "destroying a Art type" do
    visit art_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art type was successfully destroyed"
  end
end

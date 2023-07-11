require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "should create property" do
    visit properties_url
    click_on "New property"

    fill_in "Categorie", with: @property.categorie
    fill_in "Description", with: @property.description
    fill_in "Localisation", with: @property.localisation
    fill_in "Price", with: @property.price
    fill_in "Rooms", with: @property.rooms
    fill_in "Status", with: @property.status
    fill_in "Surface", with: @property.surface
    fill_in "Title", with: @property.title
    fill_in "Type", with: @property.type
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "should update Property" do
    visit property_url(@property)
    click_on "Edit this property", match: :first

    fill_in "Categorie", with: @property.categorie
    fill_in "Description", with: @property.description
    fill_in "Localisation", with: @property.localisation
    fill_in "Price", with: @property.price
    fill_in "Rooms", with: @property.rooms
    fill_in "Status", with: @property.status
    fill_in "Surface", with: @property.surface
    fill_in "Title", with: @property.title
    fill_in "Type", with: @property.type
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "should destroy Property" do
    visit property_url(@property)
    click_on "Destroy this property", match: :first

    assert_text "Property was successfully destroyed"
  end
end

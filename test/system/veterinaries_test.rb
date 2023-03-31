require "application_system_test_case"

class VeterinariesTest < ApplicationSystemTestCase
  setup do
    @veterinary = veterinaries(:one)
  end

  test "visiting the index" do
    visit veterinaries_url
    assert_selector "h1", text: "Veterinaries"
  end

  test "should create veterinary" do
    visit veterinaries_url
    click_on "New veterinary"

    fill_in "First name", with: @veterinary.first_name
    fill_in "Last name", with: @veterinary.last_name
    click_on "Create Veterinary"

    assert_text "Veterinary was successfully created"
    click_on "Back"
  end

  test "should update Veterinary" do
    visit veterinary_url(@veterinary)
    click_on "Edit this veterinary", match: :first

    fill_in "First name", with: @veterinary.first_name
    fill_in "Last name", with: @veterinary.last_name
    click_on "Update Veterinary"

    assert_text "Veterinary was successfully updated"
    click_on "Back"
  end

  test "should destroy Veterinary" do
    visit veterinary_url(@veterinary)
    click_on "Destroy this veterinary", match: :first

    assert_text "Veterinary was successfully destroyed"
  end
end

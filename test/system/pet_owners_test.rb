require "application_system_test_case"

class PetOwnersTest < ApplicationSystemTestCase
  setup do
    @pet_owner = pet_owners(:one)
  end

  test "visiting the index" do
    visit pet_owners_url
    assert_selector "h1", text: "Pet owners"
  end

  test "should create pet owner" do
    visit pet_owners_url
    click_on "New pet owner"

    fill_in "Cell number", with: @pet_owner.cell_number
    fill_in "Email", with: @pet_owner.email
    fill_in "First name", with: @pet_owner.first_name
    fill_in "Last name", with: @pet_owner.last_name
    click_on "Create Pet owner"

    assert_text "Pet owner was successfully created"
    click_on "Back"
  end

  test "should update Pet owner" do
    visit pet_owner_url(@pet_owner)
    click_on "Edit this pet owner", match: :first

    fill_in "Cell number", with: @pet_owner.cell_number
    fill_in "Email", with: @pet_owner.email
    fill_in "First name", with: @pet_owner.first_name
    fill_in "Last name", with: @pet_owner.last_name
    click_on "Update Pet owner"

    assert_text "Pet owner was successfully updated"
    click_on "Back"
  end

  test "should destroy Pet owner" do
    visit pet_owner_url(@pet_owner)
    click_on "Destroy this pet owner", match: :first

    assert_text "Pet owner was successfully destroyed"
  end
end
